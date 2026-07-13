# Decouple simulated "gridcells" from the 15-tower observational table

## Context

`offline_driver/TowerDataMod.F90` hard-codes per-site data for exactly 15 flux
towers in `(ntower)`-dimensioned arrays, with `ntower = 15` a compile-time
`parameter`. The main OpenMP loop in `offline_driver/CLMml.F90` iterates
`do nc = 1, ntower`, so the number of simulated units is bolted to the size of
the observational table — we can never simulate more than 15 units, and the
concept "a tower in our dataset" is conflated with "a thing we simulate."

We want to break that coupling by introducing a distinct concept, **gridcell**,
for the simulated units. A run will have `ngridcell` gridcells (read at runtime),
and each gridcell draws its site parameters from exactly one of the 15
observational towers (chosen by `tower_name` in that gridcell's namelist block).
Multiple gridcells may share one tower; some towers may be unused.

The work is staged so that **after every commit the code builds and runs with
identical answers** (the reviewer verifies this out-of-band). A temporary
`if (nc > 3) cycle` guard in the main loop currently caps how many gridcells are
actually simulated (3, for test speed) and is removed only in the last commit.

Key existing pattern to mirror: met/CLM forcing is already pre-read serially into
a per-gridcell buffer `forcing(:)` (`clm_src_main/ForcingBufMod.F90`), indexed by
the THREADPRIVATE `curr_run_idx` (= the gridcell/run index), filled in the serial
prefill loop in `CLMml.F90` before the parallel region. Phase 4 gives the tower
data the same treatment.

## Phase 1 — Introduce `ngridcell` (hard-coded = 15), rename driver loops

Goal: every loop/allocation in `CLMml.F90` that counts *simulated units* uses
`ngridcell` instead of `ntower`. `ntower` stays only where it genuinely means
"number of observational towers" (the `tower_name`→index lookup in `controlMod`).

`offline_driver/CLMml.F90`:
- Add `integer, parameter :: ngridcell = 15` (local to the program for now).
- Drop `ntower` from the `use TowerDataMod` line (no longer referenced here;
  `tower_id`/`tower_num` imports there are already unused — remove them too).
- Replace `ntower` with `ngridcell` at: `configs(ntower)` (line 18),
  `read_all_configs(configs, ntower)` (24), the three `do nc = 1, ntower` loops
  (25, 42, 53), `decompInit(ntower)` (31), `allocate(forcing(ntower))` (41).

Comment-only touch-ups (optional, for clarity): `decompMod.F90:41`
(`= ntower` → `= ngridcell`) and `ForcingBufMod.F90:46` (`1..ntower` →
`1..ngridcell`).

`controlMod.F90` unchanged — its `ntower` use is the tower-table lookup.

Result: `ngridcell = ntower = 15`, `if (nc>3) cycle` still present → byte-identical.

**Commit.**

## Phase 2 — Read `ngridcell` at runtime (env var, like `CLMML_DIROUT`)

`CLMML_DIROUT` is read via `get_environment_variable` in `controlMod.F90`
(lines 122-127), not a true CLI arg. We follow the same mechanism with a new
env var **`CLMML_NGRIDCELL`**.

`offline_driver/controlMod.F90`:
- Add a public `read_ngridcell()` integer function that reads `CLMML_NGRIDCELL`
  via `get_environment_variable`; if unset/empty, default to **15** (keeps a
  bare `./prgm.exe < nl.all_CHATS7.05.2007` and the serial build working
  unchanged); validate `> 0` else `endrun`.

`offline_driver/CLMml.F90`:
- `ngridcell` becomes a runtime `integer` (not `parameter`):
  `ngridcell = read_ngridcell()` near the top.
- Make `configs` and (already) `forcing` allocatable and allocate to
  `ngridcell`: `type(tower_config_type), allocatable :: configs(:)` +
  `allocate(configs(ngridcell))`.

Run scripts (`offline_executable_openmp/`):
- Each wrapper (`run_OpenMP_1thread.sh`, `run_OpenMP_3threads.sh`, and the two
  `_izumi` variants) exports `CLMML_NGRIDCELL` alongside `OMP_NUM_THREADS`
  (default `15`, editable per wrapper).
- `shared_openmp_setup.sh`: `BUILD_DIR="build_run_${OMP_NUM_THREADS}threads_${CLMML_NGRIDCELL}gridcells"`;
  `export CLMML_NGRIDCELL` so `make` sees it; include it in `LOGFILE` if desired.
- `Makefile`: `O = build_run_$(OMP_NUM_THREADS)threads_$(CLMML_NGRIDCELL)gridcells`
  (must match the shell `BUILD_DIR` exactly).

Note: `offline_executable_serial/` is out of scope (user specified the openmp
`.sh` files). It keeps working because it never sets `CLMML_NGRIDCELL` →
defaults to 15 → matches its 15-block `nl.all_CHATS7.05.2007`.

Result: with `CLMML_NGRIDCELL=15`, identical behavior; only build-dir names change.

**Commit.**

## Phase 3 — Auto-generate the namelist to length `ngridcell`

Today `shared_openmp_setup.sh` feeds the checked-in 15-block
`nl.all_CHATS7.05.2007`. Instead, generate
`${BUILD_DIR}/nl.CHATS7.05.2007.${CLMML_NGRIDCELL}gridcells` as `CLMML_NGRIDCELL`
concatenated copies of the single-block template `nl.CHATS7.05.2007`, and feed
that on stdin.

`shared_openmp_setup.sh`:
- After `BUILD_DIR` is set: build
  `${BUILD_DIR}/nl.CHATS7.05.2007.${CLMML_NGRIDCELL}gridcells` by repeating the
  contents of `nl.CHATS7.05.2007` `CLMML_NGRIDCELL` times (e.g. a
  `for i in $(seq 1 "$CLMML_NGRIDCELL"); do cat nl.CHATS7.05.2007; done`).
- Point both the normal and `--gdb` run paths at that generated file instead of
  `nl.all_CHATS7.05.2007`.

Result: for `ngridcell=15`, 15 identical CHATS7 blocks — same content as the
checked-in `nl.all_CHATS7.05.2007` → identical answers. `if (nc>3) cycle` still
present, so still only 3 gridcells simulated.

**Commit.**

## Phase 4 — Per-gridcell tower data; enable all gridcells (two commits)

Chosen approach (per user): hard-coded tables keep their `tower_*` names as the
**observational source** (length `ntower`); a new per-gridcell buffer `gc_*`
(allocatable, length `ngridcell`) is prefilled from them and read by the physics.
Index variable renamed `tower_num` → `gridcell_num` (THREADPRIVATE, lives in
`TowerDataMod`, = the gridcell/run index) so physics keeps importing only
`TowerDataMod` (no new module dependency).

### Commit 4a — Rename/rewire physics to `gc_*(gridcell_num)` (cycle kept, no answer change)

`offline_driver/TowerDataMod.F90`:
- Keep the 16 hard-coded `data`-statement tables as-is (`tower_id`, `tower_lat`,
  `tower_lon`, `tower_pft`, `tower_tex`, `tower_sand`, `tower_clay`,
  `tower_organic`, `tower_isoicol`, `tower_zbed`, `tower_ht`, `tower_canht`,
  `tower_root`, `tower_time`, `tower_pbeta_lai`, `tower_pbeta_sai`), length
  `ntower`, but make **all of them `private`**. After this commit the only reader
  of these tables is `prefill_tower_data` (same module); `controlMod`'s two
  external needs are served by new public accessors:
  - `function lookup_tower_idx(tower_name) result(idx)` — linear scan of
    `tower_id`, returns 0 if not found (caller keeps the `endrun`). Replaces
    `controlMod.F90:130-140`.
  - `function tower_timestep_min(idx) result(minutes)` — returns
    `tower_time(idx)`. Replaces the `tower_time(...)` reads at
    `controlMod.F90:143` (ntim) and `196` (dtstep).
  (`ntower` and the two accessors + `gridcell_num` + `gc_*` + `prefill_tower_data`
  are the module's public surface.)
- Rename threadprivate `tower_num` → `gridcell_num`.
- Add matching allocatable per-gridcell arrays `gc_*` (public) for every table
  the physics consumes: `gc_id, gc_pft, gc_tex, gc_sand, gc_clay, gc_organic,
  gc_isoicol, gc_zbed, gc_ht, gc_lat, gc_lon, gc_canht, gc_root,
  gc_pbeta_lai(:,2), gc_pbeta_sai(:,2)` (only the ones actually indexed
  downstream — see grep list below; `gc_time` not needed since dtstep uses the
  accessor).
- Add `subroutine prefill_tower_data(nc, tower_idx)` that allocates the `gc_*`
  arrays on first call (to `ngridcell`) and copies `gc_X(nc) = tower_X(tower_idx)`.

`offline_driver/CLMml.F90`:
- In the existing prefill loop (lines 42-49), call
  `prefill_tower_data(nc, configs(nc)%tower_idx)` per gridcell.

`offline_driver/controlMod.F90`:
- `read_one_config`: replace the inline `tower_id` scan (130-140) with
  `cfg%tower_idx = lookup_tower_idx(tower_name)` (keep the `== 0` → `endrun`),
  and `tower_time(cfg%tower_idx)` (143) with `tower_timestep_min(cfg%tower_idx)`.
  Update its `use TowerDataMod` (72) to import the accessors + `ntower` instead
  of `tower_id, tower_time`.
- `apply_config`: `gridcell_num = cfg%run_idx` (was `tower_num = cfg%tower_idx`);
  `dtstep = tower_timestep_min(cfg%tower_idx) * 60` (196). Update its
  `use TowerDataMod` (182) accordingly.

Physics rewiring — `tower_num`→`gridcell_num`, `tower_*`→`gc_*` at these exact
sites (from repo-wide grep):
- `clm_src_main/clm_instMod.F90:104,118` (`tower_pft`)
- `clm_src_main/initGridCellsMod.F90:43,54` (`tower_pft`)
- `clm_src_main/initVerticalMod.F90:32,137` (`tower_zbed`)
- `clm_src_biogeophys/SoilStateInitTimeConstMod.F90:35,135,141,144,145,153,161`
  (`tower_organic/clay/sand/tex`)
- `clm_src_biogeophys/SurfaceAlbedoMod.F90:38,54` (`tower_isoicol`)
- `offline_driver/TowerMetMod.F90:142,238,281,282` (`tower_ht/lat/lon`, via the
  `it` argument)
- `offline_driver/CLMml_driver.F90`: `use` at 52/425/663; `tower_id(tower_num)`
  logging/filenames at 119,120,208,213,218,223,228,233,326,328,329 → `gc_id`;
  `TowerVeg` body 459-485 (`tower_pft/canht/root/pbeta_*`) via `it`.

The `it` argument already threaded into `init_acclim`/`TowerVeg`/`TowerMetCurr`/
`output` from `CLMml_drv` simply carries `gridcell_num` now (index into `gc_*`).
Output-filename `_t<N>_` marker already uses `cfg%run_idx` (= gridcell) — no change.

Result: `gc_*(nc)` equals gridcell `nc`'s tower values; with the cycle still
capping at 3 and every block CHATS7, output is byte-identical.

**Commit.**

### Commit 4b — Remove the cap

- Delete `if (nc > 3) cycle` (`CLMml.F90` lines 54-56). This is the whole commit.

Result: all `ngridcell` gridcells now simulate. Gridcells 1-3 unchanged; the
newly-enabled gridcells are identical to them (all CHATS7) → self-consistency
holds and `ngridcell > 15` no longer crashes, because per-gridcell data no longer
comes from a length-15 array indexed by gridcell.

**Commit.**

## Per-commit workflow

I do **not** build or run — the user owns all build/run/answer testing (their
harness runs `offline_executable_openmp/compare_to_golden.sh`: exact `*.out`
match vs. golden + cross-gridcell self-consistency via the `_t<N>_` marker).

For each phase (and for 4a/4b separately):
1. Make the edits and commit.
2. Dispatch a code-review agent on the commit's diff, and address its findings
   (folding fixes into the commit / a follow-up as appropriate).
3. Then ping the user to run their tests. Wait for their result before starting
   the next phase.

## Out of scope
- `offline_executable_serial/` scripts/Makefile (keeps working via the
  `CLMML_NGRIDCELL` default of 15).
- Namelists with heterogeneous `tower_name`s: the machinery supports them, but
  the generator emits identical CHATS7 blocks (matching current behavior).
