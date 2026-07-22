#!/bin/bash
# Master benchmark dispatcher — run interactively on a login node.
#
# Usage:
#   bash submit_benchmark.sh            # full benchmark suite
#   TEST_ONLY=1 bash submit_benchmark.sh  # smoke test (towers<=8, threads<=8)
#
# Steps:
#   1. make clean && make  (OMP_NUM_THREADS=128, CLMML_NGRIDCELL=1)
#   2. qsub run_one_benchmark.sh for each valid (towers,threads) combo
#   3. qsub aggregate_and_plot.sh with depend=afterok:<all job IDs>

set -euo pipefail

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
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

# ── Build ─────────────────────────────────────────────────────────────────────
echo "=== Building executable ==="
export OMP_NUM_THREADS=128
export CLMML_NGRIDCELL=1
make clean
make
EXE="${SCRIPT_DIR}/build_run_128threads_1gridcells/prgm.exe"
echo "    Built: ${EXE}"
echo ""

# ── Config ────────────────────────────────────────────────────────────────────
TOWER_VALS=(1 8 32 128 256 512 1024 2048)
THREAD_VALS=(1 2 4 8 16 32 64 128)
TEST_ONLY="${TEST_ONLY:-0}"

mkdir -p "${SCRIPT_DIR}/results"

# ── Submit individual jobs ────────────────────────────────────────────────────
job_ids=()

echo "=== Submitting benchmark jobs ==="
for towers in "${TOWER_VALS[@]}"; do
    for threads in "${THREAD_VALS[@]}"; do
        if (( threads > towers )); then continue; fi

        est_s=$(( (towers + threads - 1) / threads * 12 ))
        if (( est_s > 7200 )); then
            echo "  SKIP towers=${towers} threads=${threads}: ~${est_s}s estimated > 7200s cap"
            continue
        fi

        if [[ "${TEST_ONLY}" == "1" ]] && (( towers > 8 || threads > 8 )); then
            continue
        fi

        job_id=$(qsub -v "towers=${towers},threads=${threads}" \
                      -N "clm_t${towers}_p${threads}" \
                      "${SCRIPT_DIR}/run_one_benchmark.sh")
        job_ids+=("${job_id}")
        echo "  Submitted towers=${towers} threads=${threads} → ${job_id}"
    done
done

if (( ${#job_ids[@]} == 0 )); then
    echo "No jobs to submit." >&2
    exit 1
fi

# ── Submit aggregation job with dependency ────────────────────────────────────
depend_str=$( IFS=:; echo "afterok:${job_ids[*]}" )
agg_job_id=$(qsub -W "depend=${depend_str}" "${SCRIPT_DIR}/aggregate_and_plot.sh")

echo ""
echo "=== Summary ==="
echo "    Benchmark jobs : ${#job_ids[@]}"
echo "    Aggregation job: ${agg_job_id} (runs after all benchmark jobs complete)"
echo "    Results dir    : ${SCRIPT_DIR}/results/"
echo ""
echo "Monitor with: qstat -u \$USER"
