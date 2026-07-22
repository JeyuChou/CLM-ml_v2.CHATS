#!/bin/bash
#PBS -N clm_bench_one
#PBS -A CESM0029
#PBS -q main
#PBS -l walltime=12:00:00
#PBS -l select=1:ncpus=128:mem=235GB
#PBS -j oe

# Individual benchmark job for one (towers, threads) combination.
# Submitted by submit_benchmark.sh via:
#   qsub -v towers=X,threads=Y run_one_benchmark.sh
#
# Output: results/results_towers${towers}_threads${threads}.csv
#         Columns: towers,threads,rep,walltime_s

set -euo pipefail

SCRIPT_DIR="${PBS_O_WORKDIR:-$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )}"
cd "${SCRIPT_DIR}"

# ── Validate inputs ───────────────────────────────────────────────────────────
: "${towers:?'towers variable must be set via qsub -v towers=N'}"
: "${threads:?'threads variable must be set via qsub -v threads=N'}"

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

# ── Paths ─────────────────────────────────────────────────────────────────────
EXE="${SCRIPT_DIR}/build_run_128threads_1gridcells/prgm.exe"
NL_TEMPLATE="${SCRIPT_DIR}/nl.benchmark.template"
RESULTS_DIR="${SCRIPT_DIR}/results"
OUT_CSV="${RESULTS_DIR}/results_towers${towers}_threads${threads}.csv"
NL_FILE="${SCRIPT_DIR}/nl.bench_t${towers}_p${threads}.run"
RAMDISK="/dev/shm/clmml_bench_t${towers}_p${threads}"
REPS=5

if [[ ! -x "${EXE}" ]]; then
    echo "ERROR: executable not found: ${EXE}" >&2
    exit 1
fi

mkdir -p "${RESULTS_DIR}"
echo "towers,threads,rep,walltime_s" > "${OUT_CSV}"

# ── Namelist: repeat template towers times ────────────────────────────────────
{
    for _ in $(seq 1 "${towers}"); do
        cat "${NL_TEMPLATE}"
    done
} > "${NL_FILE}"

echo "=== towers=${towers} threads=${threads}: started $(date) ==="
echo "    Executable: ${EXE}"
echo "    Output CSV: ${OUT_CSV}"

export OMP_NUM_THREADS="${threads}"
export CLMML_NGRIDCELL="${towers}"
export CLMML_DIROUT="${RAMDISK}/"

for rep in $(seq 1 "${REPS}"); do
    rm -rf "${RAMDISK:?}"
    mkdir -p "${RAMDISK}"

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

    echo "${towers},${threads},${rep},${walltime}" >> "${OUT_CSV}"
    printf "  rep %d: %ss\n" "${rep}" "${walltime}"
done

rm -f "${NL_FILE}"
rm -rf "${RAMDISK:?}"

echo "=== towers=${towers} threads=${threads}: finished $(date) ==="
