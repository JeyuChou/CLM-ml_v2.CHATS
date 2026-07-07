program CLMml

  use decompMod,    only : bounds_type, get_clump_bounds, decompInit, nclumps
  use CLMml_driver, only : CLMml_drv
  use TowerDataMod, only : tower_id, tower_num
  use abortutils,   only : tower_error_flag, tower_error_msg, reset_tower_error
  use controlMod,   only : tower_config_type, read_all_configs
  implicit none

  integer :: nc
  integer :: ntower
  integer :: nargs
  character(len=32) :: arg

  type(bounds_type)                     :: bounds
  type(tower_config_type), allocatable  :: configs(:)

  write (*,*) "Reading command-line args"
  nargs = command_argument_count()
  if (nargs < 1) then
    write (*,*) "ERROR: Must provide ntower as the first command-line argument"
    stop 1
  else if (nargs > 1) then
    write (*,*) "ERROR: Must provide exactly one command-line argument (ntower)"
    stop 1
  end if
  call get_command_argument(1, arg)
  read (arg, *) ntower
  allocate(configs(ntower))


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
    call get_clump_bounds(nc, bounds)
    call CLMml_drv(bounds, configs(nc))
  end do
  !$OMP END PARALLEL DO

end program CLMml
