#!/bin/bash
#PBS -N CLMml_CHATS7_log_serial
#PBS -A CESM0029
#PBS -q main
#PBS -l select=1:ncpus=3:mem=32GB
#PBS -l walltime=02:30:00
#PBS -j oe
#PBS -l job_priority=regular

# run.sh to git
# Replace hard-coded path to home with $PWD, $HOME, or $1
# Exit with error if git status isn't clean, including untracked files
# Pipe log to tee -p instead of > so that you can watch it go
# Log name should be run.HASH.DATETIME.log (short hash) (YYYYMMDD--HHMMSS)
# (Make sure to add .log files to .gitignore)

set -euo pipefail

module --force purge
module load ncarenv/24.12
module load cesmdev/1.0
module load conda/latest
module load nco
module load craype
module load cmake
#module load gcc/13.2.0
module load intel/2025.1.0
module load mkl/2025.1.0
module load ncarcompilers/1.0.0
#module load cuda/12.3.2
module load libfabric/2.1.0
module load netcdf/4.9.2
module load hdf5/1.12.3
export LIB_NETCDF=$NCAR_LDFLAGS_NETCDF; export MOD_NETCDF=$NCAR_INC_NETCDF
cd /glade/u/home/lchou/CLM-ml_Sam/offline_executable

HASH=$(git rev-parse --short HEAD 2>/dev/null || echo "nohash")
DATETIME=$(date +"%Y%m%d_%H%M%S")
LOGFILE="run.${HASH}.${DATETIME}_serial.log"

echo "Cleaning previous builds..."
make clean
echo "Building the executable..."
make 
echo "Running the executable with serial..."

export OMP_NUM_THREADS=1
stdbuf -oL -eL ./prgm.exe < nl.all_CHATS7.05.2007 > "$LOGFILE" 2>&1