#!/bin/bash
#PBS -N clm_bench_agg
#PBS -A CESM0029
#PBS -q main
#PBS -l walltime=00:30:00
#PBS -l select=1:ncpus=1:mem=16GB
#PBS -j oe

# Aggregation and plotting job — submitted automatically by submit_benchmark.sh
# with depend=afterok:<all benchmark job IDs>.
#
# Steps:
#   1. Merge results/results_towers*_threads*.csv -> benchmark_results.csv
#   2. Compute medians -> ensemble_benchmark_fortran.csv
#   3. Call plot_ensemble_benchmark.py --fortran ensemble_benchmark_fortran.csv

set -euo pipefail

SCRIPT_DIR="${PBS_O_WORKDIR:-$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )}"
cd "${SCRIPT_DIR}"

# ── Modules ───────────────────────────────────────────────────────────────────
module --force purge
module load ncarenv/24.12
module load conda/latest

RESULTS_DIR="${SCRIPT_DIR}/results"
RESULTS_CSV="${SCRIPT_DIR}/benchmark_results.csv"
ENSEMBLE_CSV="${SCRIPT_DIR}/ensemble_benchmark_fortran.csv"
PLOT_SCRIPT="/glade/u/home/lchou/clm-ml-jax/diags/plot_ensemble_benchmark.py"

echo "=== Aggregation started: $(date) ==="
echo "    Results dir: ${RESULTS_DIR}"

# ── Merge per-job CSVs ────────────────────────────────────────────────────────
echo "towers,threads,rep,walltime_s" > "${RESULTS_CSV}"

shopt -s nullglob
per_job_csvs=( "${RESULTS_DIR}"/results_towers*_threads*.csv )
if (( ${#per_job_csvs[@]} == 0 )); then
    echo "ERROR: no per-job CSVs found in ${RESULTS_DIR}" >&2
    exit 1
fi

for f in "${per_job_csvs[@]}"; do
    # Skip header line from each file
    tail -n +2 "${f}" >> "${RESULTS_CSV}"
done
echo "    Merged ${#per_job_csvs[@]} CSV files -> ${RESULTS_CSV}"

# ── Generate ensemble summary CSV ────────────────────────────────────────────
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

# ── Plot ──────────────────────────────────────────────────────────────────────
echo ""
echo "=== Plotting ==="
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate clm-ml-jax
python3 "${PLOT_SCRIPT}" --fortran "${ENSEMBLE_CSV}"

echo ""
echo "=== Done: $(date) ==="
echo "    Detailed results : ${RESULTS_CSV}"
echo "    Ensemble summary : ${ENSEMBLE_CSV}"
echo "    Figure           : /glade/u/home/lchou/clm-ml-jax/diags/figures/ensemble_benchmark.png"
