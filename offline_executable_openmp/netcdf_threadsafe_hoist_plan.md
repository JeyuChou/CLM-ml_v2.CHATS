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
  `beg*=end*=1` ([decompMod.F90:56-81](clm_src_main/decompMod.F90#L56)). All mutable CLM state is
  `THREADPRIVATE` ([clm_instMod.F90:54-56](clm_src_main/clm_instMod.F90#L54)); `TowerMetMod` is stateless.
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

### 4. Remove serialization
Delete the three `!$OMP CRITICAL(hdf5_io)` blocks ([CLMml_driver.F90:131,153,199](offline_driver/CLMml_driver.F90#L131)),
keeping the enclosed calls. **Keep** the unrelated criticals: `unit_table` (ASCII units),
`albsat_alloc` ([SurfaceAlbedoMod.F90:61](clm_src_biogeophys/SurfaceAlbedoMod.F90#L61)), `error_report`.
Remove `call LookupPsihatINI` from [clm_initializeMod.F90:66](clm_src_main/clm_initializeMod.F90#L66).

### 5. Makefile wiring ([offline_executable_openmp/Makefile](offline_executable_openmp/Makefile))
- Add `${O}/ForcingBufMod.o` to `mods` right after `${O}/shr_kind_mod.o`.
- Add a compile rule for `ForcingBufMod` (dep: `shr_kind_mod.o`), mirroring existing rules
  (`$(cmplr) -c ... -o ${O}/ForcingBufMod.o`).
- Add `${O}/ForcingBufMod.o` as a dependency of the `TowerMetMod.o`, `clmDataMod.o`, `controlMod.o`,
  and `CLMml.o` rules.

## Incremental build/test sequence (each stage independently buildable)
- **Stage 0 — baseline:** on a clean tree, run `run_OpenMP_1thread.sh`; archive `output_files/*.out` as the golden reference.
- **Stage 1:** add `ForcingBufMod` + Makefile wiring only (`use_buffer=.false.`). Build; behavior unchanged.
- **Stage 2 — psihat isolation:** move `LookupPsihatINI` before the region; keep all 3 criticals. 1-thread must match Stage 0; 3-thread should now survive the init phase.
- **Stage 3 — buffer correctness gate (most important):** add prefill + the buffer early-returns + `curr_run_idx` + `use_buffer=.true.`; **keep** the 3 criticals. 1-thread must be **bit-for-bit** vs Stage 0 (validates buffers while still serialized-safe).
- **Stage 4:** delete the 3 `CRITICAL(hdf5_io)`. 3-thread run completes; its output matches Stage 0.
- **Stage 5 — regression:** repeat at 1 and 3 threads with `nl.all_towers.05.2007` (mixed CLM4_5/CLM5_0 sizing; exercises absent optional met vars).

## Verification
Outputs are fixed-format ASCII (`f10.3`/`f12.7`) in `dirout`, with filenames keyed on `run_idx`, so
1- and 3-thread runs emit the same filename set. Verify with an exact `diff -r output_files/`
against the golden 1-thread set. Success criteria: (a) the 3-thread run completes with no
`H5FL`/`H5SL` segfault, and (b) 1-thread and 3-thread outputs are identical to the golden run.
Note the Makefile enforces a clean git tree before building, so commit or stash between stages.

## Risks / watch-items
- **Bit-for-bit for optional tower vars:** `prefill_tower_met` must reproduce the per-variable
  `nf_inq_varid` presence checks exactly (Stage 3's 1-thread match is the guard).
- **Per-config sizing during prefill:** set `clm_phys` and call `clm_varpar_init()` for each config
  before sizing/reading H2OSOI/TSOI, or the buffers mis-size. These master-thread threadprivate
  writes are transient and re-set per-thread in-region (verify `clm_varpar_init` is called per-thread in the region).
- **`met_type==3` next slice:** `TowerMetNext` uses `strt=min(itim+1,ntim)`, in range of the `1..ntim` buffer — no special handling.
- **Makefile module order:** `ForcingBufMod` must build before its users (wrong order → immediate build failure).

## Later / out-of-scope follow-ups (note only — not done here)
- **`masterproc` is hardwired to `.true.`** ([spmdMod.F90](clm_src_utils/spmdMod.F90), ~line 14).
  This refactor relies on it only incidentally: the single pre-region `LookupPsihatINI` reads
  cleanly because `masterproc` is unconditionally true. But a compile-time `.true.` is busted in
  general — `masterproc` should be true only on the 0th task (MPI rank / thread 0), not everywhere.
  Flagged for a later fix; **not** addressed in this plan.
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
- [clm_src_main/clm_initializeMod.F90](clm_src_main/clm_initializeMod.F90) — remove `LookupPsihatINI` call
- `clm_src_main/ForcingBufMod.F90` (new) + [offline_executable_openmp/Makefile](offline_executable_openmp/Makefile) wiring
