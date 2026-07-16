# Benchmarking Plan: CLM-ml OpenMP Tower Scaling Study

## Context

The CLM-ml Fortran model uses pure OpenMP (one thread per tower). We want to characterize how wall-clock time scales with towers (1→2048) and threads (1→128) to understand throughput and strong-scaling behavior.

The JAX version (`clm-ml-jax`) already has extensive benchmarking in `/diags/benchmark_ensemble.py` — it vmaps over N parameter sets (1,8,32,…,2048) and measures GPU vs CPU speedup. Our Fortran benchmark is the OpenMP analogue of that.

**Key constraint — simulation time**: the default namelist runs 31 days (1488 timesteps). That makes 1-thread × 2048-tower runs take ~68 hours. We'll use a dedicated benchmark namelist with **5 days** (`stop_n = 5`, 240 timesteps) to keep each run short while remaining representative. With 5 days:
- 1 thread × 1 tower ≈ 20 s
- 1 thread × 2048 towers ≈ 11 h (skip or cap)
- 128 threads × 2048 towers ≈ 5 min

We'll skip configurations where `threads > towers` (wasted) and `expected_time > 2 h` (estimated as `ceil(towers/threads) × 20s > 7200s`).

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

> **Status**: 1a already committed (c75789b). 1b is next.

---

### Step 2 — Benchmark namelist template

**File**: `offline_executable_openmp/nl.benchmark.template`

Create a new namelist template with `stop_n = 5` (5 days) and all other settings matching the existing `nl.CHATS7.05.2007`. This is the template the benchmark script will repeat N times.

**Why**: Isolates benchmark config from production namelists. Committed separately so it can be reviewed on its own.

**End ritual**: `/code-review` → fix findings → `git commit offline_executable_openmp/nl.benchmark.template`

---

### Step 3 — Benchmark PBS script

**File**: `offline_executable_openmp/benchmark.sh`

PBS script (128 CPUs, 235 GB, 12 h walltime) that:
1. Builds the executable once using the existing `Makefile`
2. Loops over towers ∈ {1,2,4,8,16,32,64,128,256,512,1024,2048}, threads ∈ {1,2,4,8,16,32,64,128}
3. Skips: `threads > towers` and estimated runtime > 2 h
4. For each valid combo: runs 3 repetitions, writes one row per run to `benchmark_results.csv`
5. Sets `CLMML_DIROUT=/dev/shm/clmml_bench` (ramdisk) to avoid filesystem pressure from output files; clears it between runs

CSV columns: `towers,threads,rep,walltime_s`

Includes a `TEST_ONLY=1` mode that caps at 2 towers × 2 threads × 1 rep for quick validation.

**End ritual**: `/code-review` → fix findings → `git commit offline_executable_openmp/benchmark.sh`

---

### Step 4 — Python visualization script

**File**: `plot_benchmark.py` (repo root)

Reads `benchmark_results.csv`, produces three plots saved as PNGs:

1. **`benchmark_walltime.png`** — wall time vs. towers, one line per thread count
2. **`benchmark_speedup.png`** — speedup vs. threads (normalized to 1-thread baseline), one line per tower count
3. **`benchmark_heatmap.png`** — heatmap of mean wall time over towers × threads grid

Uses only `pandas`, `matplotlib`, `numpy` (no exotic deps).

**End ritual**: `/code-review` → fix findings → `git commit plot_benchmark.py`

---

## Relationship to JAX version

The JAX `benchmark_ensemble.py` in `clm-ml-jax/diags/` is the GPU analogue:
- **Fortran**: OpenMP threads × tower count → wall time
- **JAX**: vmap batch size (ensemble N) → throughput (ms/sample) on CPU vs GPU

The CSV format and plots here mirror what JAX already produces, making cross-comparison easy later.

---

## Verification

After Step 1: `grep BENCHMARK` on a test run's stdout confirms the output line format.

After Step 3: run `TEST_ONLY=1 bash benchmark.sh` locally to confirm CSV is written before submitting the full PBS job.

After Step 4: run `python plot_benchmark.py` on a small CSV and confirm three PNG files are produced.
