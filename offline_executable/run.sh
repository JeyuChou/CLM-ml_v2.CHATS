#!/bin/bash
#PBS -N CLMml_CHATS7_log
#PBS -A CESM0029
#PBS -q develop
#PBS -l select=1:ncpus=3:mem=32GB
#PBS -l walltime=00:30:00
#PBS -j oe
#PBS -l job_priority=regular

# run.sh to git
# Replace hard-coded path to home with $PWD, $HOME, or $1
# Exit with error if git status isn't clean, including untracked files
# Pipe log to tee -p instead of > so that you can watch it go
# Log name should be run.HASH.DATETIME.log (short hash) (YYYYMMDD--HHMMSS)
# (Make sure to add .log files to .gitignore)

module restore CLM_ML_env
export LIB_NETCDF=$NCAR_LDFLAGS_NETCDF; export MOD_NETCDF=$NCAR_INC_NETCDF
cd /glade/u/home/lchou/CLM-ml_Sam/offline_executable

export OMP_NUM_THREADS=3
./prgm.exe < nl.all_CHATS7.05.2007 > run.log 2>&1