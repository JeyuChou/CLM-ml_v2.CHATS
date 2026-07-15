program CLMml

  use decompMod,    only : bounds_type, get_clump_bounds, decompInit, nclumps
  use CLMml_driver, only : CLMml_drv, clm_initialized
  use abortutils,   only : tower_error_flag, tower_error_msg, reset_tower_error, endrun
  use controlMod,   only : tower_config_type, read_all_configs
  use MLCanopyTurbulenceMod, only : LookupPsihatINI
  use ForcingBufMod,      only : forcing, use_buffer
  use TowerDataMod,       only : prefill_tower_data
  use TowerMetMod,        only : prefill_tower_met
  use clmDataMod,         only : prefill_clm, prefill_factor
  use clmSoilOptionMod,   only : clm_phys
  use clm_varpar,         only : clm_varpar_init
  use omp_lib,            only : omp_get_wtime, omp_get_max_threads
  implicit none
  integer :: ngridcell
  integer :: nc
  double precision :: tstart, tend
  character(len=20) :: ngridcell_env
  integer :: env_len, env_stat

  type(bounds_type)        :: bounds
  type(tower_config_type), allocatable :: configs(:)

  call get_environment_variable('CLMML_NGRIDCELL', ngridcell_env, &
       length=env_len, status=env_stat)
  if (env_stat == 0 .and. env_len > 0) then
    read(ngridcell_env, *) ngridcell
  else
    ngridcell = 15
  end if
  if (ngridcell <= 0) then
    write(*,*) 'ERROR: CLMML_NGRIDCELL must be > 0, got ', ngridcell
    call endrun()
  end if
  allocate(configs(ngridcell))

  write (*,*) "Starting Run!"

  ! Read all ngridcell namelist blocks from stdin sequentially, before any threads start.
  ! This is necessary because stdin cannot be read safely from multiple threads at once.
  call read_all_configs(configs, ngridcell)
  do nc = 1, ngridcell
    configs(nc)%run_idx = nc
  end do
  write(*,*) "Read all tower configs."

  ! One clump per gridcell — each OMP thread will process one gridcell at a time
  call decompInit(ngridcell)
  write(*,*) "Initialized decomposition."

  ! Read RSL psihat look-up tables once, single-threaded, before the parallel
  ! region. LookupPsihatINI writes shared MLclm_varcon arrays and opens a
  ! netCDF file — both are unsafe inside the OMP region.
  call LookupPsihatINI

  ! Pre-read all tower met forcing into memory before the parallel region so
  ! that readTowerMet never calls netCDF from inside an OMP thread.
  allocate (forcing(ngridcell))
  do nc = 1, ngridcell
    call prefill_tower_data(nc, configs(nc)%tower_idx, ngridcell)
    call prefill_tower_met(configs(nc)%fin_tower, configs(nc)%ntim, forcing(nc))
    clm_phys = configs(nc)%clm_phys
    call clm_varpar_init()
    call prefill_clm(configs(nc)%fin_clm, forcing(nc))
    if (configs(nc)%nlev_soil_adjust > 0) &
      call prefill_factor(configs(nc)%fin_soil_adjust, forcing(nc))
  end do
  use_buffer = .true.

  tstart = omp_get_wtime()
  !$OMP PARALLEL DO PRIVATE(bounds, nc) SCHEDULE(DYNAMIC) COPYIN(clm_initialized)
  do nc = 1, ngridcell
    call get_clump_bounds(nc, bounds)
    call CLMml_drv(bounds, configs(nc))
  end do
  !$OMP END PARALLEL DO
  tend = omp_get_wtime()
  write(*,'(A,I0,A,I0,A,F14.6)') &
    "BENCHMARK towers=", ngridcell, &
    " threads=", omp_get_max_threads(), &
    " walltime_s=", tend-tstart

end program CLMml
