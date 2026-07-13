# Plan: Make the 3-thread OpenMP run thread-safe by hoisting all netCDF I/O out of the parallel region

## Context

The offline multilayer-canopy driver parallelizes over "towers" with `!$OMP PARALLEL DO`
([CLMml.F90:28](offline_driver/CLMml.F90#L28)). At 1 thread it runs fine; at 3 threads it
segfaults. A gdb traceback shows all threads dying inside HDF5 global-state routines
(`H5FL_reg_malloc`, `H5SL__new_node`, `H5P_*`) during `nc_open`, reached from
`readTowerMet` ← `TowerMetCurr` ← the driver's time loop.

**Root cause:** HDF5 / netCDF-C is **not thread-safe**. Multiple OpenMP threads calling netCDF
concurrently corrupt HDF5's process-global internal structures. The build links the parallel
(MPI) HDF5, which is built *without* `--enable-threadsafe`, so it has no internal locking.

The developer already wraps the per-tower **init** reads in `!$OMP CRITICAL(hdf5_io)`
([CLMml_driver.F90:131,153,199](offline_driver/CLMml_driver.F90#L131)), but the **per-timestep**
reads are unguarded — that is the crash surface. Those per-timestep reads also re-open their
files on *every* timestep (thousands of opens of the same file per tower), so they are wasteful
as well as unsafe.

**Chosen approach (Full hoist):** read every netCDF input **once, single-threaded, before** the
parallel region into in-memory buffers; make every in-region reader consume the buffers; then
delete all `CRITICAL(hdf5_io)` guards so the parallel region is 100% netCDF-free.

**Intended outcome:** the 3-thread run completes; its ASCII output matches a known-good 1-thread
run bit-for-bit; redundant per-timestep file opens are eliminated.

## Key facts that make this safe/simple

- **No netCDF is ever written.** `histFileMod`/`restUtilMod` are stubs; the only model output is
  per-thread ASCII to unique per-`run_idx` filenames ([CLMml_driver.F90:212-240](offline_driver/CLMml_driver.F90#L212)) — already thread-safe.
- **Each tower is a single patch/column/gridcell** — `get_clump_bounds` always returns
  `beg*=end*=1` ([decompMod.F90:56-81](clm_src_main/decompMod.F90#L56)). Nearly all mutable CLM state is
  `THREADPRIVATE` ([clm_instMod.F90:54-56](clm_src_main/clm_instMod.F90#L54)) — the exceptions are two
  shared-write cases handled explicitly below (psihat, and `albsat`/`albdry`); `TowerMetMod` is stateless.
- **Buffer key:** `run_idx` (unique per config, set at [CLMml.F90:20](offline_driver/CLMml.F90#L20)),
  indexed by the raw netCDF slice index `strt` each reader already receives → direct lookup,
  bit-for-bit identical to per-slice reads.
- **clmData reads are time-varying** (`strt = time_indx`, recomputed each step at
  [CLMml_driver.F90:271](offline_driver/CLMml_driver.F90#L271)) → buffer the full time series.
  `SoilInit` reads a single slice at init.
- **psihat** (`LookupPsihatINI`, [MLCanopyTurbulenceMod.F90:1181](multilayer_canopy/MLCanopyTurbulenceMod.F90#L1181))
  fills the **shared** module arrays [MLclm_varcon.F90:143-149](multilayer_canopy/MLclm_varcon.F90#L143)
  with data identical across threads, via a plain `nf_open` wrapper (`masterproc` is a `.true.`
  parameter). Reading it once before the region makes those arrays write-once / read-only in-region.
- **Second shared-write hazard — `albsat`/`albdry`.** [SurfaceAlbedoMod.F90:21-22](clm_src_biogeophys/SurfaceAlbedoMod.F90#L21)
  are module-level **shared** arrays (only `isoicol` is `THREADPRIVATE`), rewritten unconditionally on
  every `SurfaceAlbedoInitTimeConst` call — every tower, every thread. Today they're serialized only
  *incidentally* by `CRITICAL(hdf5_io)` #1; once that's deleted, a thread reading `albsat` in the time
  loop (`SoilAlbedo`) races another rewriting it in a new tower's `clm_instReset`. Benign values, but a
  real race the bit-for-bit gate would miss — fixed by making them `THREADPRIVATE` too (§4).
- Total buffer memory ≈ **18 MB** for all 15 towers — negligible (job has `mem=96GB`; heap, so
  unaffected by `OMP_STACKSIZE`).

## netCDF read inventory (the complete set to hoist)

| Reader | File:line | File | Phase |
|---|---|---|---|
| `readTowerMet` | [TowerMetMod.F90:318](offline_driver/TowerMetMod.F90#L318) | tower met (`fin_tower`) | init_acclim + time loop (per step) |
| `readCLMveg` (ELAI/ESAI) | [clmDataMod.F90:170](offline_driver/clmDataMod.F90#L170) | CLM history (`fin_clm`) | time loop (per step) |
| `readCLMsoil` (H2OSOI) | [clmDataMod.F90:233](offline_driver/clmDataMod.F90#L233) | CLM history (`fin_clm`) | time loop (per step) |
| `readSoilWatFactor` (FACTOR) | [clmDataMod.F90:297](offline_driver/clmDataMod.F90#L297) | soil-adjust (`fin_soil_adjust`) | time loop (per step) |
| `SoilInit` netCDF block (TSOI/H2OSOI) | [CLMml_driver.F90:546-585](offline_driver/CLMml_driver.F90#L546) | CLM history (`fin_clm`) | init (single slice) |
| `LookupPsihatINI` (psihat) | [MLCanopyTurbulenceMod.F90:1227](multilayer_canopy/MLCanopyTurbulenceMod.F90#L1227) | `psihat.nc` | init (once, global) |

## Implementation

### 1. New module `ForcingBufMod` (`clm_src_main/ForcingBufMod.F90`) — data + toggle only
Depends only on `shr_kind_mod` (no cycles). Contains:
- `type tower_forcing_type` with allocatables: `met(nmetvar,ntim)` (raw 9 met vars),
  `elai(ntim_clm)`, `esai(ntim_clm)`, `h2osoi(nlev_h2osoi,ntim_clm)`, `tsoi(nlevgrnd,ntim_clm)`,
  `factor(nfactor)`, plus the dim scalars and `have_factor`.
- `type(tower_forcing_type), allocatable :: forcing(:)` — indexed by `run_idx`, populated before the region, read-only inside it.
- `logical :: use_buffer = .false.` — set `.true.` after prefill; shared, read-only in-region.
- `integer :: curr_run_idx` with `!$OMP THREADPRIVATE(curr_run_idx)` — which config the current thread is processing.

Rationale for a module (not extending `tower_config_type`): the low-level readers don't receive
`cfg`, so a module + threadprivate key avoids signature changes down every call chain.

### 2. Single-threaded pre-read, in [CLMml.F90](offline_driver/CLMml.F90) between `decompInit` (:25) and the `!$OMP PARALLEL DO` (:28)
```
call LookupPsihatINI                 ! moved here; remove call at clm_initializeMod.F90:66
allocate(forcing(ntower))
do nc = 1, ntower                    ! master thread, sequential
   ! set clm_phys for this config and call clm_varpar_init() so nlevsoi/nlevgrnd size correctly
   call prefill_tower_met(configs(nc), forcing(nc))
   call prefill_clm      (configs(nc), forcing(nc))
   if (configs(nc)%nlev_soil_adjust > 0) call prefill_factor(configs(nc), forcing(nc))
end do
use_buffer = .true.
```
Prefill routines are **new public routines placed beside the existing readers** (so netCDF idioms
stay co-located and existing readers can stay private):
- `TowerMetMod::prefill_tower_met` — open `fin_tower` once; `count=(1,1,ntim)`; reproduce
  `readTowerMet`'s **exact** presence logic (required: FSDS/PRECTmms/TBOT/WIND; optional
  FLDS/PSRF/RH/QBOT/ZBOT → whole row `-999` if absent).
- `clmDataMod::prefill_clm` — open `fin_clm` once; inquire `time` length; bulk-read ELAI, ESAI,
  TSOI `(nlevgrnd,Nclm)`, H2OSOI `(nlev_h2osoi,Nclm)` where `nlev_h2osoi = nlevsoi` (CLM5_0) or `nlevgrnd` (CLM4_5).
- `clmDataMod::prefill_factor` — open `fin_soil_adjust` once; bulk-read FACTOR.

(The orchestration loop can live inline in `CLMml.F90`; a tiny helper module is optional. This keeps
only **one** genuinely new module, `ForcingBufMod`.)

### 3. In-region interception — early-return guard, **no signature changes**
Add to each reader a top-of-body guard that copies from the buffer and returns; the existing netCDF
body stays as the `else` path. `use ForcingBufMod` in each. Buffer index is `strt` (already the arg).
- `readTowerMet` (before [:318](offline_driver/TowerMetMod.F90#L318)): fill the `(1,1,1)` out-args
  `zbot/tbot/rhbot/qbot/ubot/fsdsbot/fldsbot/pbot/prect` from `forcing(curr_run_idx)%met(:,strt)`.
  Serves `TowerMetCurr`, `TowerMetNext` (`strt=min(itim+1,ntim)`), and `init_acclim` unchanged; the
  per-patch conversions (RH→Q, emissivity, solar split) stay in-region on the raw values.
- `readCLMveg` / `readCLMsoil` / `readSoilWatFactor` (before their `nf_open`): fill `elai_mod`/`esai_mod`,
  `h2osoi_clm45`/`h2osoi_clm50` (per `clm_phys` branch), `h2osoi_factor_loc` from the buffer.
- `SoilInit`: guard only the netCDF block [:546-585](offline_driver/CLMml_driver.F90#L546); the copy
  into model state below is unchanged.
- `apply_config` ([controlMod.F90:158](offline_driver/controlMod.F90#L158)): add `curr_run_idx = cfg%run_idx`.

### 4. Make `albsat`/`albdry` thread-private ([SurfaceAlbedoMod.F90](clm_src_biogeophys/SurfaceAlbedoMod.F90))
`albsat`/`albdry` ([:21-22](clm_src_biogeophys/SurfaceAlbedoMod.F90#L21)) are shared module arrays
rewritten unconditionally on every `SurfaceAlbedoInitTimeConst` call ([:70-86](clm_src_biogeophys/SurfaceAlbedoMod.F90#L70)) —
every tower, every thread. Add them to a `THREADPRIVATE` directive (alongside the existing `isoicol`
one at [:24](clm_src_biogeophys/SurfaceAlbedoMod.F90#L24)) so each thread gets its own copy, and delete
the now-unnecessary `CRITICAL(albsat_alloc)` ([:61-68](clm_src_biogeophys/SurfaceAlbedoMod.F90#L61)).
The values are constant tables, so this is result-neutral; it removes the shared-write race that
`CRITICAL(hdf5_io)` #1 was incidentally serializing.

### 5. Remove serialization
Delete the three `!$OMP CRITICAL(hdf5_io)` blocks ([CLMml_driver.F90:131,153,199](offline_driver/CLMml_driver.F90#L131)),
keeping the enclosed calls. Safe only after §2–§4 (psihat read pre-region, all readers buffer-backed,
`albsat`/`albdry` thread-private), so nothing left inside those blocks does netCDF or writes shared
state. **Keep** the unrelated criticals: `unit_table` (ASCII units) and `error_report`
(`CRITICAL(albsat_alloc)` is *removed* in §4, not kept). Also remove the now-unused
`call LookupPsihatINI` from [clm_initializeMod.F90:66](clm_src_main/clm_initializeMod.F90#L66) **and**
its `use ... only : LookupPsihatINI` import (avoids an `ifx -warn all` unused-symbol warning).

### 6. Makefile wiring ([offline_executable_openmp/Makefile](offline_executable_openmp/Makefile))
- Add `${O}/ForcingBufMod.o` to `mods` right after `${O}/shr_kind_mod.o`.
- Add a compile rule for `ForcingBufMod` (dep: `shr_kind_mod.o`), mirroring existing rules
  (`$(cmplr) -c ... -o ${O}/ForcingBufMod.o`).
- Because `ForcingBufMod.o` is in `mods`, it is already a prerequisite of every `src0/src1/src2` rule,
  so it's automatically a dependency of all consumers — explicit per-rule deps are optional (add for
  clarity if desired). `CLMml.F90`'s new `use`s of `TowerMetMod`/`clmDataMod`/`MLCanopyTurbulenceMod`
  are satisfied transitively (the `CLMml.o` rule already depends on `CLMml_driver.o` → `$(src1)`).
- No Makefile change is needed for the `SurfaceAlbedoMod.F90` edit (existing, already-built file).

## Execution workflow (conventions for implementation)
Per stage — and per 4a–4e sub-stage — in this order:
1. **Code review before committing.** Dispatch a code-review subagent via the Superpowers
   `requesting-code-review` skill over that stage's diff; **pass along the review agent's requests**
   and resolve them (per the Superpowers `receiving-code-review` skill — verify, don't blindly
   apply) before proceeding.
2. **Commit** the stage's changes, with Claude noted as co-author using the trailer:
   `Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>`
   This also satisfies the Makefile's clean-tree gate for the build. If later testing turns up
   changes needed before advancing, **amend** this commit rather than adding a new one.
3. **Hand off for testing — the user runs all test runs.** Claude does not build or run the model
   itself; it states it is ready for the user to test (with the exact run command) and hands off,
   never offering to run it.

## Incremental build/test sequence (each stage independently buildable)
- **Stage 0 — baseline:** on a clean tree, run `run_OpenMP_1thread.sh`; archive `output_files/*.out` into a reference dir (e.g. `golden_1thread/`) as the golden reference.
- **Stage 1 — comparison harness:** write a small script (e.g. `offline_executable_openmp/compare_to_golden.sh <run_output_dir> <reference_dir>`) that does an exact text `diff -r` of the two `*.out` sets, prints a clear PASS/FAIL, and exits nonzero on any mismatch (output is fixed-format ASCII, so exact match is the correct bar). This is the tool used to check every subsequent stage. No model-code change.
- **Stage 2:** add `ForcingBufMod` + Makefile wiring only (`use_buffer=.false.`). Build; behavior unchanged (harness: PASS vs golden).
- **Stage 3 — shared-state isolation (prerequisites for removing the criticals).** Two independent, result-neutral changes, each reviewed/committed/1-thread-checked separately:
  - **3a — psihat:** move `LookupPsihatINI` to the single pre-region call and remove it (and its `use`) from `initialize2`. psihat both reads netCDF *and* writes the shared `MLclm_varcon` arrays, so it can't stay in-region once the guards go. **No 3-thread behavior change** (the run gets through init today and still crashes in the time-loop `readTowerMet`); check only that 1-thread is PASS vs golden.
  - **3b — `albsat`/`albdry` thread-private:** make them `THREADPRIVATE` and drop `CRITICAL(albsat_alloc)` (§4). Removes the second shared-write race that `CRITICAL(hdf5_io)` #1 was incidentally covering. Values unchanged → 1-thread PASS vs golden.
- **Stage 4 — hoist the readers one at a time (buffer correctness gates).** Convert **one reader per sub-stage**: each adds that reader's prefill (if not already present) plus its `use_buffer` early-return, and is gated by a **1-thread bit-for-bit** check vs golden before moving on. The 3 criticals stay in place throughout. At 1 thread, any reader not yet converted just keeps reading netCDF (harmless), so do **not** expect 3-thread completion until 4d (see below).
  - **4a — tower met:** add `prefill_tower_met` (`fin_tower`) + `readTowerMet` early-return; also add the `curr_run_idx` plumbing (in `apply_config`) and set `use_buffer = .true.` here. Covers `TowerMetCurr`/`TowerMetNext`/`init_acclim` — this is the actual crash site.
  - **4b — CLM veg:** add `prefill_clm` (opens `fin_clm` once; reads ELAI/ESAI/H2OSOI/TSOI) + `readCLMveg` early-return (consumes ELAI/ESAI).
  - **4c — CLM soil:** add `readCLMsoil` early-return (consumes H2OSOI already loaded by `prefill_clm` in 4b — no new prefill).
  - **4d — soil-adjust factor:** add `prefill_factor` (`fin_soil_adjust`) + `readSoilWatFactor` early-return. This buffers the **last unguarded time-loop reader**, so — with psihat out (3a), `albsat`/`albdry` thread-private (3b), and `SoilInit` still serialized by `CRITICAL(hdf5_io)` #3 — **this is the first point the 3-thread run should complete** (no concurrent HDF5). Confirm 1-thread bit-for-bit **and** 3-thread PASS.
  - **4e — SoilInit:** add the `SoilInit` netCDF-block early-return (consumes TSOI/H2OSOI already loaded in 4b — no new prefill). After 4e **no netCDF remains anywhere in the region**, which is what lets Stage 5 remove `CRITICAL(hdf5_io)` #3. Confirm 1-thread bit-for-bit **and** 3-thread PASS.
- **Stage 5:** delete the 3 `CRITICAL(hdf5_io)` blocks. By now they guard only buffer/memory reads (time-loop readers, `init_acclim`) plus the already-safe init sequence (psihat out, `albsat`/`albdry` thread-private, `SoilInit` buffered), so removal is race-free. 3-thread run still completes; harness PASS vs golden.
- **Stage 6 — regression:** repeat at 1 and 3 threads with `nl.all_towers.05.2007` (all towers; **all CLM5_0** — CLM4_5 is out of scope, see below). Confirm at least one tower in the set omits an optional met var (exercises `readTowerMet`'s `nf_inq_varid` presence logic). Compare the 3-thread run against a fresh 1-thread run of the same namelist using the Stage 1 harness.

## Verification
Outputs are fixed-format ASCII (`f10.3`/`f12.7`) in `dirout`, with filenames keyed on `run_idx`, so
1- and 3-thread runs emit the same filename set. Verify with an exact `diff -r output_files/`
against the golden 1-thread set. Success criteria: (a) the 3-thread run completes with no
`H5FL`/`H5SL` segfault, and (b) 1-thread and 3-thread outputs are identical to the golden run.
The Stage 1 comparison harness automates this check. Note the Makefile enforces a clean git tree
before building, so commit or stash between stages.

## Risks / watch-items
- **Bit-for-bit for optional tower vars:** `prefill_tower_met` must reproduce the per-variable
  `nf_inq_varid` presence checks exactly (Stage 4a's 1-thread match is the guard).
- **Per-config sizing during prefill (valid only because all configs are CLM5_0):** the prefill loop
  must set `clm_phys` and call `clm_varpar_init()` per config before sizing/reading H2OSOI/TSOI, so each
  buffer gets the right `nlev`. Caveat: `clm_varpar_init` is **not** re-run per config in-region — it runs
  only on each thread's *first* tower (via `initialize1`), so `nlevsoi/nlevgrnd` are fixed per-thread.
  Fine while every config is CLM5_0; a mixed-`clm_phys` run would diverge (buffer sized per-config vs.
  in-region out-arrays sized with the thread's first-tower `nlev`) — hence CLM4_5/mixed is out of scope.
- **In-region H2OSOI/TSOI copy extent:** the buffer→out-arg copy in `readCLMsoil`/`SoilInit` must use
  the exact netCDF read extent (`nlevsoi` CLM5_0 / `nlevgrnd` CLM4_5), matching the buffer's `nlev_h2osoi`.
  (The `spval` init in `readCLMsoil` [:228-229] is fully overwritten in both branches, so it's moot.)
- **Buffer memory / `time_indx` range:** the ~18 MB estimate assumes the CLM-history files roughly match
  the run window; if they span more (e.g. a full year) the H2OSOI/TSOI buffers are several× larger (still
  trivial vs 96 GB). `prefill_clm` reads the full `time` dim, and the buffer path must keep `time_indx`
  in `[1, Nclm]` just as the netCDF path would.
- **`met_type==3` next slice:** `TowerMetNext` uses `strt=min(itim+1,ntim)`, in range of the `1..ntim` buffer — no special handling.
- **Makefile module order:** `ForcingBufMod` must build before its users (wrong order → immediate build failure).

## Later / out-of-scope follow-ups (note only — not done here)
- **`masterproc` is hardwired to `.true.`** ([spmdMod.F90](clm_src_utils/spmdMod.F90), ~line 14).
  This refactor relies on it only incidentally: the single pre-region `LookupPsihatINI` reads
  cleanly because `masterproc` is unconditionally true. But a compile-time `.true.` is busted in
  general — `masterproc` should be true only on the 0th task (MPI rank / thread 0), not everywhere.
  Flagged for a later fix; **not** addressed in this plan.
- **CLM4_5 buffer path is unvalidated.** Every current namelist is 100% `clm_phys='CLM5_0'`, so the
  CLM4_5 branches (`h2osoi(nlevgrnd,·)` sizing and the `CLM4_5` copy loops in
  `prefill_clm`/`readCLMsoil`/`SoilInit`) are never exercised by any gate. Declared out of scope; if
  CLM4_5 is ever run, add coverage and fix the per-config `nlev` issue (call `clm_varpar_init` in
  `apply_config`).
- **JAX cross-repo comparison:** before comparing this (Fortran) version against the JAX version
  (in a separate repo), make sure the JAX version is **also** reading all its netCDF inputs ahead
  of time, so the two implementations ingest forcing the same way and the comparison is
  apples-to-apples.

## Critical files
- [offline_driver/CLMml.F90](offline_driver/CLMml.F90) — pre-read loop, psihat hoist, `use_buffer` toggle
- [offline_driver/CLMml_driver.F90](offline_driver/CLMml_driver.F90) — delete 3 criticals; `SoilInit` buffer path
- [offline_driver/TowerMetMod.F90](offline_driver/TowerMetMod.F90) — `readTowerMet` early-return + `prefill_tower_met`
- [offline_driver/clmDataMod.F90](offline_driver/clmDataMod.F90) — 3 reader early-returns + `prefill_clm`/`prefill_factor`
- [offline_driver/controlMod.F90](offline_driver/controlMod.F90) — set `curr_run_idx` in `apply_config`
- [clm_src_main/clm_initializeMod.F90](clm_src_main/clm_initializeMod.F90) — remove `LookupPsihatINI` call + its `use`
- [clm_src_biogeophys/SurfaceAlbedoMod.F90](clm_src_biogeophys/SurfaceAlbedoMod.F90) — make `albsat`/`albdry` THREADPRIVATE; drop `CRITICAL(albsat_alloc)`
- `clm_src_main/ForcingBufMod.F90` (new) + [offline_executable_openmp/Makefile](offline_executable_openmp/Makefile) wiring
