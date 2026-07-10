# Enable "run under gdb" from EITHER a --gdb argument (when a wrapper is run
# interactively) OR a USE_GDB environment variable. PBS cannot pass command-line
# arguments to a job script, so for batch submission set the env var instead:
#     qsub -v USE_GDB=1 run_OpenMP_3threads.sh
case "${USE_GDB:-}" in
    1|true|TRUE|True|yes|YES|on|ON) USE_GDB=true ;;
    *) USE_GDB=false ;;
esac
for arg in "$@"; do
    case "$arg" in
        --gdb) USE_GDB=true ;;
        -h|--help)
            echo "Usage: $0 [--gdb]              # interactive"
            echo "       qsub -v USE_GDB=1 $0     # batch"
            exit 0 ;;
        *) echo "Unknown argument: $arg (try --gdb)" >&2; exit 1 ;;
    esac
done

module --force purge
if [[ (! -u HOSTNAME && $HOSTNAME == "izumi"* ) || (! -u PBS_O_HOST && $PBS_O_HOST == "izumi"*) ]]; then
    module load compiler/intel/20.0.1
    module load openmpi/4.0.3/intel/20.0.1
    module load tool/hdf5/1.12.0/intel/20.0.1
    module load tool/netcdf/4.7.4/intel/20.0.1

    export LIB_NETCDF=$NETCDF_PATH/lib
    export MOD_NETCDF=$NETCDF_PATH/include
else
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
    module load openmpi/5.0.7
    module load hdf5-mpi/1.12.3
    module load netcdf-mpi/4.9.3
    module load parallel-netcdf/1.14.0

    export LIB_NETCDF=$NCAR_LDFLAGS_NETCDF
    export MOD_NETCDF=$NCAR_INC_NETCDF
fi

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "$SCRIPT_DIR"
BUILD_DIR="build_run_${OMP_NUM_THREADS}threads"
mkdir -p "$BUILD_DIR"

# Route model output into an output_files/ subdir of this run's build_run_*
# dir (see CLMML_DIROUT in controlMod.F90). Trailing slash required — dirout
# is prepended directly to filenames.
mkdir -p "${BUILD_DIR}/output_files"
export CLMML_DIROUT="./${BUILD_DIR}/output_files/"

HASH=$(git rev-parse --short HEAD 2>/dev/null || echo "nohash")
DATETIME=$(date +"%Y%m%d_%H%M%S")
LOGFILE="${BUILD_DIR}/run.${HASH}.${DATETIME}_OpenMP_${OMP_NUM_THREADS}Thread.log"

echo "Cleaning previous builds..."
make clean
echo "Building the executable..."
make 
if [ "${USE_GDB:-false}" = true ]; then
    GDB_BIN="${GDB:-gdb}"
    if ! command -v "$GDB_BIN" >/dev/null 2>&1; then
        echo "ERROR: --gdb requested but '$GDB_BIN' not found in PATH." >&2
        echo "       Load a debugger module, or set GDB=gdb-oneapi." >&2
        exit 1
    fi
    echo "Running the executable under $GDB_BIN (non-interactive)..."
    echo "  Program output and traceback -> $LOGFILE"
    "$GDB_BIN" -batch \
        -ex 'run < nl.all_CHATS7.05.2007' \
        -ex 'thread apply all bt' \
        --args "./${BUILD_DIR}/prgm.exe" \
        > "$LOGFILE" 2>&1 || true
    echo "gdb run complete. See $LOGFILE"
else
    echo "Running the executable with OpenMP..."
    stdbuf -oL -eL "./${BUILD_DIR}/prgm.exe" < nl.all_CHATS7.05.2007 > "$LOGFILE" 2>&1
fi
