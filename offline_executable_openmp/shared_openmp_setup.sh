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
module load openmpi/5.0.7
module load hdf5-mpi/1.12.3
module load netcdf-mpi/4.9.3
module load parallel-netcdf/1.14.0

#
export LIB_NETCDF=$NCAR_LDFLAGS_NETCDF; export MOD_NETCDF=$NCAR_INC_NETCDF
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "$SCRIPT_DIR"
BUILD_DIR="build_run_${OMP_NUM_THREADS}threads"
mkdir -p "$BUILD_DIR"

HASH=$(git rev-parse --short HEAD 2>/dev/null || echo "nohash")
DATETIME=$(date +"%Y%m%d_%H%M%S")
LOGFILE="${BUILD_DIR}/run.${HASH}.${DATETIME}_OpenMP_${OMP_NUM_THREADS}Thread.log"

echo "Cleaning previous builds..."
make clean
echo "Building the executable..."
make 
echo "Running the executable with OpenMP..."

stdbuf -oL -eL "./${BUILD_DIR}/prgm.exe" < nl.all_CHATS7.05.2007 > "$LOGFILE" 2>&1
