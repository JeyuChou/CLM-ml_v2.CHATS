program CLMml

  use decompMod,    only : bounds_type, get_clump_bounds, decompInit, nclumps
  use CLMml_driver, only : CLMml_drv
  use TowerDataMod, only : ntower, tower_id, tower_num
  use abortutils,   only : tower_error_flag, tower_error_msg, reset_tower_error
  use controlMod,   only : tower_config_type, read_all_configs
  implicit none
  integer :: nc

  type(bounds_type)        :: bounds
  type(tower_config_type)  :: configs(ntower)

  write (*,*) "Starting Run!"

  ! Read all ntower namelist blocks from stdin sequentially, before any threads start.
  ! This is necessary because stdin cannot be read safely from multiple threads at once.
  call read_all_configs(configs, ntower)
  do nc = 1, ntower
    configs(nc)%run_idx = nc
  end do
  write(*,*) "Read all tower configs."

  ! One clump per tower — each OMP thread will process one tower at a time
  call decompInit(ntower)
  write(*,*) "Initialized decomposition."

  !$OMP PARALLEL DO PRIVATE(bounds, nc) SCHEDULE(DYNAMIC)
  do nc = 1, ntower
    if (nc > 1) then
      cycle ! For troubleshooting, only process one site (per thread)
    end if
    call get_clump_bounds(nc, bounds)
    call CLMml_drv(bounds, configs(nc))
  end do
  !$OMP END PARALLEL DO

end program CLMml
