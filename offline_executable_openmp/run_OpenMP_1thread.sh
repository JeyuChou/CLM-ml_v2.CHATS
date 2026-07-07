#!/bin/bash
#PBS -N CLMml_CHATS7_log_openMP_1Thread
#PBS -A CESM0029
#PBS -q develop
#PBS -l select=1:ncpus=1:mem=32GB
#PBS -l walltime=00:30:00
#PBS -j oe
#PBS -l job_priority=regular

set -euo pipefail

export OMP_STACKSIZE=8G
export OMP_NUM_THREADS=1

# Forward any args (e.g. --gdb) to the shared setup/build/run script.
. ./shared_openmp_setup.sh "$@"
