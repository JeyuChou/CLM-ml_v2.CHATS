# Benchmarking Plan: CLM-ml OpenMP Tower Scaling Study

## Context

The CLM-ml Fortran model uses pure OpenMP (one thread per tower). We want to characterize how wall-clock time scales with towers (1→2048) and threads (1→128) to understand throughput and strong-scaling behavior.

The JAX version (`clm-ml-jax`) already has extensive benchmarking in `/diags/benchmark_ensemble.py` — it vmaps over N parameter sets (1,8,32,…,2048) and measures GPU vs CPU speedup. Our Fortran benchmark is the OpenMP analogue of that.

**Key constraint — simulation time**: the default namelist runs 31 days (1488 timesteps). We'll use a dedicated benchmark namelist with **3 days** (`stop_n = 3`, 144 timesteps) — long enough to amortize I/O and initialization overhead, short enough to keep the scaling matrix tractable. The JAX benchmark uses 1 day (`nl.CHATS7.1day`); we use 3 to improve per-run consistency. With 3 days:
- 1 thread × 1 tower ≈ 12 s
- 1 thread × 2048 towers ≈ 7 h (skip)
- 128 threads × 2048 towers ≈ 3 min

We'll skip configurations where `threads > towers` (wasted) and `expected_time > 2 h` (estimated as `ceil(towers/threads) × 12s > 7200s`).

---

## End goal: match clm-ml-jax/diags output

`plot_ensemble_benchmark.py` in the JAX repo already supports a `--fortran` overlay flag that reads:

```
ensemble_benchmark_fortran.csv  (columns: backend,N,run_wall_s,ms_per_sample,notes)
```

where `backend` is `fortran_seq` (1 thread) or `fortran_par` (N threads). The current file in `clm-ml-jax/diags/figures/` contains placeholder/extrapolated data. Our benchmark replaces it with real measurements and produces the combined GPU+CPU+Fortran figure.

**Final workflow** (after all steps are done):
```
# 1. Run our PBS benchmark → produces benchmark_results.csv + ensemble_benchmark_fortran.csv
qsub benchmark.sh

# 2. Copy Fortran summary to JAX figures dir
cp ensemble_benchmark_fortran.csv /glade/u/home/lchou/clm-ml-jax/diags/figures/

# 3. Produce combined figure (Fortran + JAX GPU + JAX CPU)
cd /glade/u/home/lchou/clm-ml-jax
python diags/plot_ensemble_benchmark.py \
    --fortran diags/figures/ensemble_benchmark_fortran.csv

# 4. (Optional) Fortran-only plots from our plot_benchmark.py
cd /glade/u/home/lchou/CLM-ml_Sam
python plot_benchmark.py
```

---

## Atomic Steps

Each step follows the same ending ritual:
1. Run `/code-review` on the changed files
2. Address any findings
3. Commit with a focused message

---

### Step 1 — Structured timing output + CSV append in `CLMml.F90`

**File**: `offline_driver/CLMml.F90`

Two sub-changes, committed together:

**1a** — Move `tstart` to just before `!$OMP PARALLEL DO` (excludes serial netCDF prefill from walltime), add `omp_get_max_threads` to the `use omp_lib` import, and change the write to emit a grep-able stdout line:
```
BENCHMARK towers=N threads=M walltime_s=X.XXXXXX
```

**1b** — After the stdout line, read the `CLMML_BENCHMARK_CSV` env var. If set, open that path in append mode and write one CSV row. Write a header row first if the file is new/empty:
```
towers,threads,walltime_s
1024,64,5.234178
```

The benchmark script simply sets `CLMML_BENCHMARK_CSV=benchmark_results.csv` and runs the executable — no stdout parsing needed. The stdout `BENCHMARK` line is kept for log readability.

**End ritual**: `/code-review` → fix findings → `git commit offline_driver/CLMml.F90`

> **Status**: 1a and 1b both committed. Done.

---

### Step 2 — Benchmark namelist template

**File**: `offline_executable_openmp/nl.benchmark.template`

Create a new namelist template with `stop_n = 3` (3 days, 144 timesteps) and all other settings matching the existing `nl.CHATS7.05.2007`. This is the template the benchmark script will repeat N times (one block per tower).

**Why `stop_n = 3`**: 1 day (JAX's duration) is too short to amortize I/O and initialization; 5 days is unnecessarily long. 3 days gives ~12 s per tower at 1 thread, making a 5-rep × 128-thread × 2048-tower run about 3–4 minutes.

`dirout` is set to `BENCHMARK_DIROUT_PLACEHOLDER` — the benchmark script substitutes the actual ramdisk path at runtime via `sed`.

**End ritual**: `/code-review` → fix findings → `git commit offline_executable_openmp/nl.benchmark.template`

---

### Step 3 — Benchmark PBS script

**File**: `offline_executable_openmp/benchmark.sh`

PBS script (128 CPUs, 235 GB, 12 h walltime) that:
1. Builds the executable once using the existing `Makefile`
2. Loops over towers ∈ {1,8,32,128,256,512,1024,2048}, threads ∈ {1,2,4,8,16,32,64,128}
   - N values match JAX's `N_VALS = [1,8,32,128,512,1024,2048]` plus intermediate points
3. Skips: `threads > towers` and estimated runtime > 2 h
4. For each valid combo: runs **5 repetitions**, writes one row per run to `benchmark_results.csv`
5. Sets `CLMML_DIROUT=/dev/shm/clmml_bench` (ramdisk) to avoid filesystem pressure; clears it between runs

**Two output CSVs:**

`benchmark_results.csv` — full detail, one row per rep:
```
towers,threads,rep,walltime_s
```

`ensemble_benchmark_fortran.csv` — summary for `plot_ensemble_benchmark.py`, one row per (backend, N):
```
backend,N,run_wall_s,ms_per_sample,notes
fortran_seq,1,12.3,12300.0,measured
fortran_par,128,0.12,120.0,measured
```
- `fortran_seq`: rows where `threads=1` (median over 5 reps)
- `fortran_par`: rows where `threads=min(N, 128)` (median over 5 reps)
- `ms_per_sample = median_walltime_s / N * 1000`

Includes a `TEST_ONLY=1` mode that caps at towers=8, threads=8, 2 reps for quick validation.

**End ritual**: `/code-review` → fix findings → `git commit offline_executable_openmp/benchmark.sh`

---

### Step 4 — Python visualization script

**File**: `plot_benchmark.py` (repo root)

Reads `benchmark_results.csv`, produces three Fortran-only plots saved as PNGs:

1. **`benchmark_walltime.png`** — wall time vs. towers, one line per thread count
2. **`benchmark_speedup.png`** — speedup vs. threads (normalized to 1-thread baseline), one line per tower count
3. **`benchmark_heatmap.png`** — heatmap of median wall time over towers × threads grid

Uses only `pandas`, `matplotlib`, `numpy` (no exotic deps).

> The combined GPU+CPU+Fortran figure is produced by `plot_ensemble_benchmark.py --fortran` in the JAX repo (see "End goal" section above). `plot_benchmark.py` handles the Fortran-only analysis.

**End ritual**: `/code-review` → fix findings → `git commit plot_benchmark.py`

---

## Relationship to JAX version

The JAX `benchmark_ensemble.py` in `clm-ml-jax/diags/` is the GPU analogue:
- **Fortran**: OpenMP threads × tower count → wall time; `ms_per_sample = walltime / N * 1000`
- **JAX**: vmap batch size (ensemble N) → throughput (ms/sample) on CPU vs GPU

The `ensemble_benchmark_fortran.csv` format and the combined `plot_ensemble_benchmark.py` figure make cross-comparison direct.

**Note on simulation duration**: JAX runs 1 forward pass (1 timestep ≈ 30 min simulated), Fortran runs 3 days (144 timesteps). The `ms_per_sample` values are therefore not directly comparable in absolute terms — Fortran does ~144× more simulated time per call. The comparison shows relative scaling behavior (how throughput improves with N), not absolute cost parity.

---

## Verification

After Step 1: `grep BENCHMARK` on a test run's stdout confirms the output line format.

After Step 2: manually inspect the generated namelist block to confirm `stop_n = 3`.

After Step 3: run `TEST_ONLY=1 bash benchmark.sh` locally to confirm both CSVs are written before submitting the full PBS job.

After Step 4: run `python plot_benchmark.py` on a small CSV and confirm three PNG files are produced.
