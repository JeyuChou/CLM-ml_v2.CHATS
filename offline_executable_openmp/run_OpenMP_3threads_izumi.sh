#!/bin/bash
#PBS -N CLMml_CHATS7_log_openMP_3Thread
#PBS -A CESM0029
#PBS -q medium
#PBS -l select=1:ncpus=3:mem=96GB
#PBS -l walltime=00:30:00
#PBS -j oe

set -euo pipefail

export OMP_STACKSIZE=8G
export OMP_NUM_THREADS=3

# Forward any args (e.g. --gdb) to the shared setup/build/run script.
. ./shared_openmp_setup.sh "$@"
