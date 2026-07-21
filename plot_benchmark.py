#!/usr/bin/env python3
"""Fortran-only CLM-ml benchmark visualisation.

Reads benchmark_results.csv (towers,threads,rep,walltime_s) and writes three PNGs:
  benchmark_walltime.png  — median wall time vs towers, one line per thread count
  benchmark_speedup.png   — speedup vs threads (vs 1-thread), one line per tower count
  benchmark_heatmap.png   — median wall time heatmap over towers x threads
"""

import sys
import numpy as np
import pandas as pd
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

CSV_PATH = "benchmark_results.csv"
if len(sys.argv) > 1:
    CSV_PATH = sys.argv[1]

df = pd.read_csv(CSV_PATH)
medians = df.groupby(["towers", "threads"])["walltime_s"].median().reset_index()

if medians.empty:
    sys.exit(f"No data rows in {CSV_PATH} — run benchmark.sh first.")

# ── 1. Wall time vs towers ────────────────────────────────────────────────────
fig, ax = plt.subplots(figsize=(8, 5))
for t in sorted(medians["threads"].unique()):
    sub = medians[medians["threads"] == t].sort_values("towers")
    ax.plot(sub["towers"], sub["walltime_s"], marker="o", label=f"{t} thread{'s' if t > 1 else ''}")
ax.set_xscale("log", base=2)
ax.set_yscale("log")
ax.set_xlabel("Tower count (N)")
ax.set_ylabel("Median wall time (s)")
ax.set_title("CLM-ml OpenMP: wall time vs tower count")
ax.legend(title="Threads", fontsize=8)
ax.grid(True, which="both", linestyle="--", alpha=0.4)
fig.tight_layout()
fig.savefig("benchmark_walltime.png", dpi=150)
plt.close(fig)
print("Wrote benchmark_walltime.png")

# ── 2. Speedup vs threads ─────────────────────────────────────────────────────
fig, ax = plt.subplots(figsize=(8, 5))
baseline = medians[medians["threads"] == 1].set_index("towers")["walltime_s"]
for N in sorted(medians["towers"].unique()):
    if N not in baseline.index:
        continue
    sub = medians[medians["towers"] == N].sort_values("threads")
    speedup = baseline[N] / sub["walltime_s"].values
    ax.plot(sub["threads"], speedup, marker="o", label=f"N={N}")

max_t = medians["threads"].max()
t_range = np.array([1, max_t])
ax.plot(t_range, t_range, "k--", linewidth=1, label="ideal")

ax.set_xscale("log", base=2)
ax.set_yscale("log", base=2)
ax.set_xlabel("Thread count")
ax.set_ylabel("Speedup (vs 1 thread)")
ax.set_title("CLM-ml OpenMP: speedup vs thread count")
ax.legend(title="Towers", fontsize=8, ncol=2)
ax.grid(True, which="both", linestyle="--", alpha=0.4)
fig.tight_layout()
fig.savefig("benchmark_speedup.png", dpi=150)
plt.close(fig)
print("Wrote benchmark_speedup.png")

# ── 3. Heatmap ────────────────────────────────────────────────────────────────
grid = medians.pivot(index="threads", columns="towers", values="walltime_s")
threads_u = list(grid.index)
towers_u = list(grid.columns)

fig, ax = plt.subplots(figsize=(9, 5))
im = ax.imshow(grid.values, aspect="auto", origin="lower",
               norm=matplotlib.colors.LogNorm())
ax.set_xticks(range(len(towers_u)))
ax.set_xticklabels(towers_u)
ax.set_yticks(range(len(threads_u)))
ax.set_yticklabels(threads_u)
ax.set_xlabel("Tower count (N)")
ax.set_ylabel("Thread count")
ax.set_title("CLM-ml OpenMP: median wall time (s)")
plt.colorbar(im, ax=ax, label="Wall time (s)")
for (ri, ci), val in np.ndenumerate(grid.values):
    if not np.isnan(val):
        ax.text(ci, ri, f"{val:.1f}", ha="center", va="center", fontsize=6, color="white")
fig.tight_layout()
fig.savefig("benchmark_heatmap.png", dpi=150)
plt.close(fig)
print("Wrote benchmark_heatmap.png")
