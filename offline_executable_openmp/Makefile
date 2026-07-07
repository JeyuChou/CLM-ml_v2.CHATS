# ###############################################
# Makefile
#
# To run: type 'make' or 'make -f Makefile'
#
# To remove obj files and mod files: type 'make clean'
# ###############################################

LIB_NETCDF = $(NCAR_LDFLAGS_NETCDF)
MOD_NETCDF = $(NCAR_INC_NETCDF)

# Source code directories

shr = ../clm_share
cpl = ../clm_src_cpl
util = ../clm_src_utils
main = ../clm_src_main
bgp = ../clm_src_biogeophys
can = ../multilayer_canopy
drv = ../offline_driver

# Directory for object files

O = build_run_$(OMP_NUM_THREADS)threads

# Executable is "prgm.exe"

prgm = $(O)/prgm.exe

# Build the executable by default. Declared explicitly because the order-only
# build-directory rule ($(objs): | $(O)) is the first rule in the file and would
# otherwise become make's default goal (building only the first object file).
.DEFAULT_GOAL := $(prgm)

#GCC Compiler (OpenMP -- -fopenmp enabled)
#cmplr = gfortran -O0 -g -fbacktrace -fopenmp -fcheck=all -Wall -ffpe-trap=zero,invalid,overflow -L$(LIB_NETCDF) -I$(MOD_NETCDF) -lnetcdff -lblas -lm -L$(HOME)/usr/lib64

#Intel Compiler (OpenMP -- -qopenmp enabled)
#cmplr = ifx -O0 -g -traceback -qopenmp -check all -warn all -fpe0 -L$(LIB_NETCDF) -I$(MOD_NETCDF) -lnetcdff -lblas -lm -L$(HOME)/usr/lib64
cmplr = ifx -O0 -g -traceback -qopenmp -check all -warn all -fpe0 -module $(O) -L$(LIB_NETCDF) -I$(MOD_NETCDF) -L$(HOME)/usr/lib64 -lnetcdff -qmkl -lm
# Fortran 95 compiler (OpenMP -- -mp enabled)

#cmplr = nvfortran -O0 -g -mp -traceback -C -Minform=inform -Ktrap=fp -L$(LIB_NETCDF) -I$(MOD_NETCDF) -lnetcdff -lblas -lm -L$(HOME)/usr/lib64

#cmplr = nvfortran -O2 -mp -L$(LIB_NETCDF) -I$(MOD_NETCDF) -lnetcdff -lblas -lm -L/usr/lib64

# Specify module files (that all other files use). Order matters, because some files
# are used by other files in mods list

mods = ${O}/shr_kind_mod.o ${O}/clm_varcon.o ${O}/clm_varctl.o ${O}/MLclm_varctl.o ${O}/clmSoilOptionMod.o ${O}/clm_varpar.o \
	${O}/MLclm_varcon.o ${O}/MLclm_varpar.o ${O}/spmdMod.o \
	${O}/ColumnType.o ${O}/PatchType.o ${O}/GridcellType.o \
	${O}/CanopyStateType.o ${O}/EnergyFluxType.o ${O}/FrictionVelocityMod.o ${O}/SoilStateType.o \
	${O}/SolarAbsorbedType.o ${O}/SurfaceAlbedoType.o ${O}/TemperatureType.o ${O}/WaterFluxBulkType.o \
	${O}/WaterType.o ${O}/WaterStateBulkType.o ${O}/WaterDiagnosticBulkType.o ${O}/atm2lndType.o \
	${O}/wateratm2lndBulkType.o ${O}/decompMod.o ${O}/pftconMod.o ${O}/abortutils.o ${O}/ncdio_pio.o \
	${O}/shr_file_mod.o ${O}/fileutils.o ${O}/clm_time_manager.o ${O}/MLWaterVaporMod.o \
	${O}/SoilTexMod.o ${O}/TowerDataMod.o ${O}/clm_varorb.o ${O}/shr_orb_mod.o \
	${O}/histFileMod.o ${O}/restUtilMod.o ${O}/MLCanopyFluxesType.o ${O}/filterMod.o \
	${O}/MLMathToolsMod.o ${O}/MLpftconMod.o

# Specify files needed for clm_instMod

src0 = ${O}/SurfaceAlbedoMod.o ${O}/SoilStateInitTimeConstMod.o ${O}/initVerticalMod.o

# Specify other files. Order matters, because some files are used by other files in src1 list

src1 = ${O}/clm_instMod.o ${O}/SoilWaterMovementMod.o ${O}/controlMod.o \
	${O}/MLSoilTemperatureMod.o ${O}/MLLeafHeatCapacityMod.o \
	${O}/MLLeafBoundaryLayerMod.o ${O}/MLLeafPhotosynthesisMod.o ${O}/MLLeafFluxesMod.o \
	${O}/MLLongwaveRadiationMod.o ${O}/MLPlantHydraulicsMod.o \
	${O}/MLSoilFluxesMod.o ${O}/MLSolarRadiationMod.o ${O}/SurfaceResistanceMod.o \
	${O}/TowerMetMod.o ${O}/clmDataMod.o ${O}/MLCanopyWaterMod.o ${O}/MLCanopyNitrogenProfileMod.o \
	${O}/MLCanopyTurbulenceMod.o ${O}/MLFluxProfileSolutionMod.o ${O}/MLGetAtmForcingMod.o\
	${O}/MLRungeKuttaMod.o ${O}/MLinitVerticalMod.o

# Specify all other files. Order matters, because some files are used by other files in src2 list

src2 = ${O}/initSubgridMod.o ${O}/initGridCellsMod.o ${O}/MLCanopyFluxesMod.o \
	${O}/clm_driver.o ${O}/lnd_comp_nuopc.o \
	${O}/clm_initializeMod.o ${O}/CLMml_driver.o ${O}/CLMml.o

# Object files

objs = $(mods) $(src0) $(src1) $(src2)

# Ensure the build directory exists before any object is compiled/moved into it

$(objs): | $(O)

$(O):
	mkdir -p $(O)

# Compile code into an executable file defined by "prgm"

$(prgm): $(objs)
	@echo "Checking git status..."
	@if [ -n "$$(git status --porcelain)" ]; then \
		echo "ERROR: Git working directory is not clean (includes untracked files). Commit or stash changes before running make."; \
		git status --short; \
		exit 1; \
	fi
	@HASH=$$(git rev-parse --short HEAD 2>/dev/null || echo "nohash"); \
	DATETIME=$$(date +"%Y%m%d_%H%M%S"); \
	LOGFILE="$(O)/run.$$HASH.$$DATETIME.log"; \
	echo "Compiling and logging to $$LOGFILE..."; \
	$(cmplr) -o $(prgm) $(objs) 2>&1 | tee -p $$LOGFILE

# mods files first, because they are used by other files

${O}/shr_kind_mod.o: ${shr}/shr_kind_mod.F90
	$(cmplr) -c ${shr}/shr_kind_mod.F90 -o ${O}/shr_kind_mod.o

${O}/shr_file_mod.o: ${shr}/shr_file_mod.F90 ${O}/shr_kind_mod.o ${O}/clm_varctl.o ${O}/abortutils.o
	$(cmplr) -c ${shr}/shr_file_mod.F90 -o ${O}/shr_file_mod.o

${O}/shr_orb_mod.o: ${shr}/shr_orb_mod.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o
	$(cmplr) -c ${shr}/shr_orb_mod.F90 -o ${O}/shr_orb_mod.o

${O}/clm_varcon.o: ${main}/clm_varcon.F90 ${O}/shr_kind_mod.o
	$(cmplr) -c ${main}/clm_varcon.F90 -o ${O}/clm_varcon.o

${O}/clm_varctl.o: ${main}/clm_varctl.F90 ${O}/shr_kind_mod.o
	$(cmplr) -c ${main}/clm_varctl.F90 -o ${O}/clm_varctl.o

${O}/clm_varpar.o: ${main}/clm_varpar.F90 ${O}/shr_kind_mod.o ${O}/MLclm_varctl.o
	$(cmplr) -c ${main}/clm_varpar.F90 -o ${O}/clm_varpar.o

${O}/decompMod.o: ${main}/decompMod.F90 ${O}/shr_kind_mod.o
	$(cmplr) -c ${main}/decompMod.F90 -o ${O}/decompMod.o

${O}/pftconMod.o: ${main}/pftconMod.F90 ${O}/shr_kind_mod.o ${O}/clm_varpar.o ${O}/MLclm_varctl.o
	$(cmplr) -c ${main}/pftconMod.F90 -o ${O}/pftconMod.o

${O}/abortutils.o: ${main}/abortutils.F90 ${O}/shr_kind_mod.o ${O}/clm_varctl.o
	$(cmplr) -c ${main}/abortutils.F90 -o ${O}/abortutils.o

${O}/clm_time_manager.o: ${util}/clm_time_manager.F90 ${O}/shr_kind_mod.o ${O}/clm_varctl.o ${O}/abortutils.o
	$(cmplr) -c ${util}/clm_time_manager.F90 -o ${O}/clm_time_manager.o

${O}/clm_varorb.o: ${util}/clm_varorb.F90 ${O}/shr_kind_mod.o
	$(cmplr) -c ${util}/clm_varorb.F90 -o ${O}/clm_varorb.o

${O}/fileutils.o: ${util}/fileutils.F90 ${O}/shr_kind_mod.o ${O}/clm_varctl.o ${O}/abortutils.o ${O}/shr_file_mod.o
	$(cmplr) -c ${util}/fileutils.F90 -o ${O}/fileutils.o

${O}/spmdMod.o: ${util}/spmdMod.F90 ${O}/shr_kind_mod.o
	$(cmplr) -c ${util}/spmdMod.F90 -o ${O}/spmdMod.o

${O}/MLclm_varcon.o: ${can}/MLclm_varcon.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o
	$(cmplr) -c ${can}/MLclm_varcon.F90 -o ${O}/MLclm_varcon.o

${O}/MLclm_varctl.o: ${can}/MLclm_varctl.F90 ${O}/shr_kind_mod.o
	$(cmplr) -c ${can}/MLclm_varctl.F90 -o ${O}/MLclm_varctl.o

${O}/MLclm_varpar.o: ${can}/MLclm_varpar.F90 ${O}/shr_kind_mod.o
	$(cmplr) -c ${can}/MLclm_varpar.F90 -o ${O}/MLclm_varpar.o

${O}/clmSoilOptionMod.o: ${drv}/clmSoilOptionMod.F90 ${O}/shr_kind_mod.o
	$(cmplr) -c ${drv}/clmSoilOptionMod.F90 -o ${O}/clmSoilOptionMod.o

${O}/MLMathToolsMod.o: ${can}/MLMathToolsMod.F90 ${O}/shr_kind_mod.o ${O}/MLclm_varctl.o ${O}/abortutils.o
	$(cmplr) -c ${can}/MLMathToolsMod.F90 -o ${O}/MLMathToolsMod.o

${O}/MLpftconMod.o: ${can}/MLpftconMod.F90 ${O}/shr_kind_mod.o ${O}/clm_varpar.o ${O}/MLclm_varctl.o
	$(cmplr) -c ${can}/MLpftconMod.F90 -o ${O}/MLpftconMod.o

${O}/MLWaterVaporMod.o: ${can}/MLWaterVaporMod.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o ${O}/MLclm_varcon.o
	$(cmplr) -c ${can}/MLWaterVaporMod.F90 -o ${O}/MLWaterVaporMod.o

${O}/SoilTexMod.o: ${drv}/SoilTexMod.F90 ${O}/shr_kind_mod.o
	$(cmplr) -c ${drv}/SoilTexMod.F90 -o ${O}/SoilTexMod.o

${O}/TowerDataMod.o: ${drv}/TowerDataMod.F90 ${O}/shr_kind_mod.o
	$(cmplr) -c ${drv}/TowerDataMod.F90 -o ${O}/TowerDataMod.o

${O}/atm2lndType.o: ${main}/atm2lndType.F90 ${O}/shr_kind_mod.o ${O}/clm_varpar.o ${O}/decompMod.o
	$(cmplr) -c ${main}/atm2lndType.F90 -o ${O}/atm2lndType.o

${O}/wateratm2lndBulkType.o: ${main}/wateratm2lndBulkType.F90 ${O}/shr_kind_mod.o ${O}/clm_varpar.o ${O}/decompMod.o
	$(cmplr) -c ${main}/wateratm2lndBulkType.F90 -o ${O}/wateratm2lndBulkType.o

${O}/ColumnType.o: ${main}/ColumnType.F90 ${O}/shr_kind_mod.o ${O}/clm_varpar.o ${O}/clm_varcon.o
	$(cmplr) -c ${main}/ColumnType.F90 -o ${O}/ColumnType.o

${O}/PatchType.o: ${main}/PatchType.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o
	$(cmplr) -c ${main}/PatchType.F90 -o ${O}/PatchType.o

${O}/GridcellType.o: ${main}/GridcellType.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o
	$(cmplr) -c ${main}/GridcellType.F90 -o ${O}/GridcellType.o

${O}/ncdio_pio.o: ${main}/ncdio_pio.F90 ${O}/shr_kind_mod.o ${O}/abortutils.o
	$(cmplr) -c ${main}/ncdio_pio.F90 -o ${O}/ncdio_pio.o

${O}/histFileMod.o: ${main}/histFileMod.F90 ${O}/shr_kind_mod.o ${O}/decompMod.o
	$(cmplr) -c ${main}/histFileMod.F90 -o ${O}/histFileMod.o

${O}/restUtilMod.o: ${util}/restUtilMod.F90 ${O}/shr_kind_mod.o ${O}/ncdio_pio.o
	$(cmplr) -c ${util}/restUtilMod.F90 -o ${O}/restUtilMod.o

${O}/CanopyStateType.o: ${bgp}/CanopyStateType.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o ${O}/decompMod.o
	$(cmplr) -c ${bgp}/CanopyStateType.F90 -o ${O}/CanopyStateType.o

${O}/EnergyFluxType.o: ${bgp}/EnergyFluxType.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o ${O}/decompMod.o
	$(cmplr) -c ${bgp}/EnergyFluxType.F90 -o ${O}/EnergyFluxType.o

${O}/FrictionVelocityMod.o: ${bgp}/FrictionVelocityMod.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o ${O}/decompMod.o
	$(cmplr) -c ${bgp}/FrictionVelocityMod.F90 -o ${O}/FrictionVelocityMod.o

${O}/SoilStateType.o: ${bgp}/SoilStateType.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o ${O}/clm_varpar.o ${O}/decompMod.o
	$(cmplr) -c ${bgp}/SoilStateType.F90 -o ${O}/SoilStateType.o

${O}/SolarAbsorbedType.o: ${bgp}/SolarAbsorbedType.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o ${O}/decompMod.o
	$(cmplr) -c ${bgp}/SolarAbsorbedType.F90 -o ${O}/SolarAbsorbedType.o

${O}/SurfaceAlbedoType.o: ${bgp}/SurfaceAlbedoType.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o ${O}/clm_varpar.o ${O}/decompMod.o
	$(cmplr) -c ${bgp}/SurfaceAlbedoType.F90 -o ${O}/SurfaceAlbedoType.o

${O}/TemperatureType.o: ${bgp}/TemperatureType.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o ${O}/clm_varpar.o ${O}/decompMod.o
	$(cmplr) -c ${bgp}/TemperatureType.F90 -o ${O}/TemperatureType.o

${O}/WaterFluxBulkType.o: ${bgp}/WaterFluxBulkType.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o ${O}/decompMod.o
	$(cmplr) -c ${bgp}/WaterFluxBulkType.F90 -o ${O}/WaterFluxBulkType.o

${O}/WaterType.o: ${bgp}/WaterType.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o ${O}/clm_varpar.o ${O}/decompMod.o
	$(cmplr) -c ${bgp}/WaterType.F90 -o ${O}/WaterType.o

${O}/WaterStateBulkType.o: ${bgp}/WaterStateBulkType.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o ${O}/clm_varpar.o ${O}/decompMod.o
	$(cmplr) -c ${bgp}/WaterStateBulkType.F90 -o ${O}/WaterStateBulkType.o

${O}/WaterDiagnosticBulkType.o: ${bgp}/WaterDiagnosticBulkType.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o ${O}/clm_varpar.o ${O}/decompMod.o
	$(cmplr) -c ${bgp}/WaterDiagnosticBulkType.F90 -o ${O}/WaterDiagnosticBulkType.o

${O}/MLCanopyFluxesType.o: ${can}/MLCanopyFluxesType.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o ${O}/clm_varpar.o \
${O}/decompMod.o ${O}/histFileMod.o ${O}/restUtilMod.o ${O}/ncdio_pio.o ${O}/shr_file_mod.o ${O}/MLclm_varpar.o
	$(cmplr) -c ${can}/MLCanopyFluxesType.F90 -o ${O}/MLCanopyFluxesType.o

${O}/filterMod.o: ${main}/filterMod.F90 ${O}/shr_kind_mod.o ${O}/clm_varcon.o
	$(cmplr) -c ${main}/filterMod.F90 -o ${O}/filterMod.o

# src0 files, which use mod files

${O}/SurfaceAlbedoMod.o: ${bgp}/SurfaceAlbedoMod.F90 $(mods)
	$(cmplr) -c ${bgp}/SurfaceAlbedoMod.F90 -o ${O}/SurfaceAlbedoMod.o

${O}/SoilStateInitTimeConstMod.o: ${bgp}/SoilStateInitTimeConstMod.F90 $(mods)
	$(cmplr) -c ${bgp}/SoilStateInitTimeConstMod.F90 -o ${O}/SoilStateInitTimeConstMod.o

${O}/initVerticalMod.o: ${main}/initVerticalMod.F90 $(mods)
	$(cmplr) -c ${main}/initVerticalMod.F90 -o ${O}/initVerticalMod.o

# src1 files, which use mod files and src0 files

${O}/clm_instMod.o: ${main}/clm_instMod.F90 $(mods) $(src0)
	$(cmplr) -c ${main}/clm_instMod.F90 -o ${O}/clm_instMod.o

${O}/controlMod.o: ${drv}/controlMod.F90 $(mods)
	$(cmplr) -c ${drv}/controlMod.F90 -o ${O}/controlMod.o

${O}/SoilWaterMovementMod.o: ${bgp}/SoilWaterMovementMod.F90 $(mods)
	$(cmplr) -c ${bgp}/SoilWaterMovementMod.F90 -o ${O}/SoilWaterMovementMod.o

${O}/MLSoilTemperatureMod.o: ${can}/MLSoilTemperatureMod.F90 $(mods)
	$(cmplr) -c ${can}/MLSoilTemperatureMod.F90 -o ${O}/MLSoilTemperatureMod.o

${O}/TowerMetMod.o: ${drv}/TowerMetMod.F90 $(mods)
	$(cmplr) -c ${drv}/TowerMetMod.F90 -o ${O}/TowerMetMod.o

${O}/clmDataMod.o: ${drv}/clmDataMod.F90 $(mods)
	$(cmplr) -c ${drv}/clmDataMod.F90 -o ${O}/clmDataMod.o

${O}/SurfaceResistanceMod.o: ${bgp}/SurfaceResistanceMod.F90 $(mods)
	$(cmplr) -c ${bgp}/SurfaceResistanceMod.F90 -o ${O}/SurfaceResistanceMod.o

${O}/MLSolarRadiationMod.o: ${can}/MLSolarRadiationMod.F90 $(mods)
	$(cmplr) -c ${can}/MLSolarRadiationMod.F90 -o ${O}/MLSolarRadiationMod.o

${O}/MLCanopyTurbulenceMod.o: ${can}/MLCanopyTurbulenceMod.F90 $(mods)
	$(cmplr) -c ${can}/MLCanopyTurbulenceMod.F90 -o ${O}/MLCanopyTurbulenceMod.o

${O}/MLFluxProfileSolutionMod.o: ${can}/MLFluxProfileSolutionMod.F90 $(mods)
	$(cmplr) -c ${can}/MLFluxProfileSolutionMod.F90 -o ${O}/MLFluxProfileSolutionMod.o

${O}/MLLeafBoundaryLayerMod.o: ${can}/MLLeafBoundaryLayerMod.F90 $(mods)
	$(cmplr) -c ${can}/MLLeafBoundaryLayerMod.F90 -o ${O}/MLLeafBoundaryLayerMod.o

${O}/MLLeafHeatCapacityMod.o: ${can}/MLLeafHeatCapacityMod.F90 $(mods)
	$(cmplr) -c ${can}/MLLeafHeatCapacityMod.F90 -o ${O}/MLLeafHeatCapacityMod.o

${O}/MLLeafFluxesMod.o: ${can}/MLLeafFluxesMod.F90 $(mods)
	$(cmplr) -c ${can}/MLLeafFluxesMod.F90 -o ${O}/MLLeafFluxesMod.o

${O}/MLLeafPhotosynthesisMod.o: ${can}/MLLeafPhotosynthesisMod.F90 $(mods)
	$(cmplr) -c ${can}/MLLeafPhotosynthesisMod.F90 -o ${O}/MLLeafPhotosynthesisMod.o

${O}/MLLongwaveRadiationMod.o: ${can}/MLLongwaveRadiationMod.F90 $(mods)
	$(cmplr) -c ${can}/MLLongwaveRadiationMod.F90 -o ${O}/MLLongwaveRadiationMod.o

${O}/MLPlantHydraulicsMod.o: ${can}/MLPlantHydraulicsMod.F90 $(mods)
	$(cmplr) -c ${can}/MLPlantHydraulicsMod.F90 -o ${O}/MLPlantHydraulicsMod.o

${O}/MLSoilFluxesMod.o: ${can}/MLSoilFluxesMod.F90 $(mods)
	$(cmplr) -c ${can}/MLSoilFluxesMod.F90 -o ${O}/MLSoilFluxesMod.o

${O}/MLCanopyWaterMod.o: ${can}/MLCanopyWaterMod.F90 $(mods)
	$(cmplr) -c ${can}/MLCanopyWaterMod.F90 -o ${O}/MLCanopyWaterMod.o

${O}/MLCanopyNitrogenProfileMod.o: ${can}/MLCanopyNitrogenProfileMod.F90 $(mods)
	$(cmplr) -c ${can}/MLCanopyNitrogenProfileMod.F90 -o ${O}/MLCanopyNitrogenProfileMod.o

${O}/MLGetAtmForcingMod.o: ${can}/MLGetAtmForcingMod.F90 $(mods)
	$(cmplr) -c ${can}/MLGetAtmForcingMod.F90 -o ${O}/MLGetAtmForcingMod.o

${O}/MLRungeKuttaMod.o: ${can}/MLRungeKuttaMod.F90 $(mods)
	$(cmplr) -c ${can}/MLRungeKuttaMod.F90 -o ${O}/MLRungeKuttaMod.o

${O}/MLinitVerticalMod.o: ${can}/MLinitVerticalMod.F90 $(mods)
	$(cmplr) -c ${can}/MLinitVerticalMod.F90 -o ${O}/MLinitVerticalMod.o

# src2 files, which use mod files and src1 files

${O}/initSubgridMod.o: ${main}/initSubgridMod.F90 $(mods)
	$(cmplr) -c ${main}/initSubgridMod.F90 -o ${O}/initSubgridMod.o

${O}/initGridCellsMod.o: ${main}/initGridCellsMod.F90 $(mods) ${O}/initSubgridMod.o
	$(cmplr) -c ${main}/initGridCellsMod.F90 -o ${O}/initGridCellsMod.o

${O}/MLCanopyFluxesMod.o: ${can}/MLCanopyFluxesMod.F90 $(mods) $(src1)
	$(cmplr) -c ${can}/MLCanopyFluxesMod.F90 -o ${O}/MLCanopyFluxesMod.o

${O}/clm_driver.o: ${main}/clm_driver.F90 $(mods) $(src0) $(src1) ${O}/MLCanopyFluxesMod.o
	$(cmplr) -c ${main}/clm_driver.F90 -o ${O}/clm_driver.o

${O}/clm_initializeMod.o: ${main}/clm_initializeMod.F90 $(mods) ${O}/initGridCellsMod.o ${O}/MLCanopyTurbulenceMod.o
	$(cmplr) -c ${main}/clm_initializeMod.F90 -o ${O}/clm_initializeMod.o

${O}/lnd_comp_nuopc.o: ${cpl}/lnd_comp_nuopc.F90 $(mods) ${O}/clm_initializeMod.o ${O}/clm_driver.o
	$(cmplr) -c ${cpl}/lnd_comp_nuopc.F90 -o ${O}/lnd_comp_nuopc.o

${O}/CLMml_driver.o: ${drv}/CLMml_driver.F90 $(mods) $(src1) ${O}/lnd_comp_nuopc.o
	$(cmplr) -c ${drv}/CLMml_driver.F90 -o ${O}/CLMml_driver.o

${O}/CLMml.o: ${drv}/CLMml.F90 $(mods) ${O}/CLMml_driver.o
	$(cmplr) -c ${drv}/CLMml.F90 -o ${O}/CLMml.o

# clean up object and mod files

clean:
	rm -f ${O}/*.o
	rm -f ${O}/*.mod
	rm -f $(prgm)
run: $(prgm)
	@HASH=$$(git rev-parse --short HEAD 2>/dev/null || echo "nohash"); \
	DATETIME=$$(date +"%Y%m%d_%H%M%S"); \
	LOGFILE="$(O)/run.$$HASH.$${DATETIME}_OpenMP.log"; \
	echo "Running $(prgm) and logging to $$LOGFILE..."; \
	./$(prgm) < nl.all_CHATS7.05.2007 2>&1 | tee $$LOGFILE
