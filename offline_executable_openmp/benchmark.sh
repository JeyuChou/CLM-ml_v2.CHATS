#!/bin/bash
#PBS -N clm_benchmark
#PBS -A CESM0029
#PBS -q main
#PBS -l walltime=12:00:00
#PBS -l select=1:ncpus=128:mem=235GB
#PBS -j oe

# CLM-ml OpenMP tower-scaling benchmark.
#
# Builds the executable once (OMP_NUM_THREADS=128, CLMML_NGRIDCELL=1),
# then loops over towers x threads x 5 reps.  Results go to two CSVs:
#
#   benchmark_results.csv          — one row per rep (towers,threads,rep,walltime_s)
#   ensemble_benchmark_fortran.csv — summary for plot_ensemble_benchmark.py
#                                    (backend,N,run_wall_s,ms_per_sample,notes)
#
# TEST_ONLY=1 bash benchmark.sh   — quick smoke-test (towers≤8, threads≤8, 2 reps)

set -euo pipefail

SCRIPT_DIR="${PBS_O_WORKDIR:-$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )}"
cd "${SCRIPT_DIR}"

# ── Modules (Derecho) ─────────────────────────────────────────────────────────
module --force purge
module load ncarenv/24.12
module load cesmdev/1.0
module load conda/latest
module load nco
module load craype
module load cmake
module load intel/2025.1.0
module load mkl/2025.1.0
module load ncarcompilers/1.0.0
module load libfabric/2.1.0
module load openmpi/5.0.7
module load hdf5-mpi/1.12.3
module load netcdf-mpi/4.9.3
module load parallel-netcdf/1.14.0

export LIB_NETCDF="${NCAR_LDFLAGS_NETCDF}"
export MOD_NETCDF="${NCAR_INC_NETCDF}"
export OMP_STACKSIZE=8G

# ── Build once ────────────────────────────────────────────────────────────────
# Build directory encodes thread/gridcell counts from the Makefile convention;
# fix them to 128/1 so we get a single stable executable path.
export OMP_NUM_THREADS=128
export CLMML_NGRIDCELL=1
BUILD_DIR="${SCRIPT_DIR}/build_run_128threads_1gridcells"
make clean
make
EXE="${BUILD_DIR}/prgm.exe"
echo "Built: ${EXE}"

# ── Config ────────────────────────────────────────────────────────────────────
TOWER_VALS=(1 8 32 128 256 512 1024 2048)
THREAD_VALS=(1 2 4 8 16 32 64 128)
REPS=5
TEST_ONLY="${TEST_ONLY:-0}"

RAMDISK=/dev/shm/clmml_bench
RESULTS_CSV="${SCRIPT_DIR}/benchmark_results.csv"
ENSEMBLE_CSV="${SCRIPT_DIR}/ensemble_benchmark_fortran.csv"
NL_TEMPLATE="${SCRIPT_DIR}/nl.benchmark.template"

echo "towers,threads,rep,walltime_s" > "${RESULTS_CSV}"
echo ""
echo "=== CLM-ml benchmark started: $(date) ==="
echo "    Git: $(git rev-parse --short HEAD 2>/dev/null || echo nohash)"
echo "    Executable: ${EXE}"
echo "    Results: ${RESULTS_CSV}"
echo ""

# ── Main loop ─────────────────────────────────────────────────────────────────
NL_FILE="${SCRIPT_DIR}/nl.benchmark.run"

for towers in "${TOWER_VALS[@]}"; do
    # Generate namelist once per tower count (content does not depend on threads)
    for _ in $(seq 1 "${towers}"); do
        cat "${NL_TEMPLATE}"
    done > "${NL_FILE}"

    for threads in "${THREAD_VALS[@]}"; do
        # More threads than towers wastes cores with no benefit
        if (( threads > towers )); then continue; fi

        # Estimated wall time: ceil(towers/threads) * 12s per tower at 1 thread
        est_s=$(( (towers + threads - 1) / threads * 12 ))
        if (( est_s > 7200 )); then
            echo "SKIP towers=${towers} threads=${threads}: ~${est_s}s estimated > 7200s cap"
            echo "${towers},${threads},SKIP,est_${est_s}s" >> "${RESULTS_CSV}"
            continue
        fi

        if [[ "${TEST_ONLY}" == "1" ]] && (( towers > 8 || threads > 8 )); then
            continue
        fi

        n_reps="${REPS}"
        [[ "${TEST_ONLY}" == "1" ]] && n_reps=2

        echo "--- towers=${towers} threads=${threads} (${n_reps} reps) ---"

        export OMP_NUM_THREADS="${threads}"
        export CLMML_NGRIDCELL="${towers}"
        # Route model output to ramdisk; trailing slash required by CLMml_driver
        export CLMML_DIROUT="${RAMDISK}/"

        for rep in $(seq 1 "${n_reps}"); do
            rm -rf "${RAMDISK:?}"
            mkdir -p "${RAMDISK}"

            # Capture stdout; extract walltime from the BENCHMARK line
            tmplog=$(mktemp /tmp/clmml_bench_XXXXXX.log)
            run_ok=0
            stdbuf -oL -eL "${EXE}" < "${NL_FILE}" > "${tmplog}" 2>&1 \
                && run_ok=1 || true

            walltime=""
            if [[ "${run_ok}" == "1" ]]; then
                walltime=$(awk '/^BENCHMARK/ {
                    for (i=1; i<=NF; i++)
                        if ($i ~ /^walltime_s=/) {
                            split($i, a, "="); print a[2]; exit
                        }
                }' "${tmplog}")
            fi
            rm -f "${tmplog}"

            if [[ -z "${walltime}" ]]; then
                echo "  rep ${rep}: FAILED (no BENCHMARK line)"
                continue
            fi

            echo "${towers},${threads},${rep},${walltime}" >> "${RESULTS_CSV}"
            printf "  rep %d: %ss\n" "${rep}" "${walltime}"
        done
    done
done

# Clean up per-run namelist and ramdisk
rm -f "${NL_FILE}"
rm -rf "${RAMDISK:?}"

# ── Generate ensemble summary CSV ─────────────────────────────────────────────
echo ""
echo "=== Generating ${ENSEMBLE_CSV} ==="

python3 - "${RESULTS_CSV}" "${ENSEMBLE_CSV}" <<'PYEOF'
import csv, sys
from statistics import median

results_csv, ensemble_csv = sys.argv[1], sys.argv[2]

data = {}  # (towers, threads) -> [walltime_s, ...]
with open(results_csv) as f:
    for row in csv.DictReader(f):
        if row["rep"] == "SKIP":
            continue
        key = (int(row["towers"]), int(row["threads"]))
        data.setdefault(key, []).append(float(row["walltime_s"]))

tower_vals = sorted({t for t, _ in data})
rows = []
for N in tower_vals:
    if (N, 1) in data:
        wall = median(data[(N, 1)])
        rows.append({"backend": "fortran_seq", "N": N,
                     "run_wall_s": f"{wall:.6f}",
                     "ms_per_sample": f"{wall / N * 1000:.4f}",
                     "notes": "measured"})
    best_t = min(N, 128)
    if (N, best_t) in data:
        wall = median(data[(N, best_t)])
        rows.append({"backend": "fortran_par", "N": N,
                     "run_wall_s": f"{wall:.6f}",
                     "ms_per_sample": f"{wall / N * 1000:.4f}",
                     "notes": f"measured_t{best_t}"})

with open(ensemble_csv, "w", newline="") as f:
    w = csv.DictWriter(f, fieldnames=["backend","N","run_wall_s","ms_per_sample","notes"])
    w.writeheader()
    w.writerows(rows)

print(f"Wrote {ensemble_csv} ({len(rows)} rows)")
for r in rows:
    print(f"  {r['backend']:14s}  N={r['N']:5d}  ms/sample={r['ms_per_sample']:10s}  {r['notes']}")
PYEOF

echo ""
echo "=== Benchmark complete: $(date) ==="
echo "    Detailed: ${RESULTS_CSV}"
echo "    Ensemble: ${ENSEMBLE_CSV}"
