module controlMod

  !-----------------------------------------------------------------------
  ! !DESCRIPTION:
  ! Initialize namelist run control variables
  !
  ! !USES:
  use abortutils,   only : endrun
  use shr_kind_mod, only : r8 => shr_kind_r8
  !
  ! !PUBLIC TYPES:
  implicit none

  ! One tower's worth of namelist data, pre-read before the parallel region.
  ! Passed directly to CLMml_drv so threads never touch stdin.
  type, public :: tower_config_type
    character(len=6)   :: tower_name
    integer            :: start_ymd
    integer            :: start_tod
    character(len=6)   :: stop_option
    integer            :: stop_n
    integer            :: clm_start_ymd
    integer            :: clm_start_tod
    character(len=256) :: fin_tower
    character(len=256) :: fin_clm
    character(len=6)   :: clm_phys
    character(len=256) :: fin_soil_adjust
    integer            :: nlev_soil_adjust
    character(len=256) :: dirout
    integer            :: met_type
    real(r8)           :: dpai_min
    integer            :: pftcon_val
    integer            :: tower_idx   ! index into TowerDataMod arrays, resolved from tower_name
    integer            :: ntim        ! number of timesteps, computed from stop_option/stop_n
  end type tower_config_type

  ! !PUBLIC MEMBER FUNCTIONS:
  public :: read_all_configs   ! read all namelist blocks from stdin into array (serial, before OMP)
  public :: apply_config       ! apply one config to THREADPRIVATE module globals (inside OMP)
  !-----------------------------------------------------------------------

contains

  !-----------------------------------------------------------------------
  subroutine read_all_configs (configs, n)
    !
    ! !DESCRIPTION:
    ! Read all n &clmML_inparm blocks from stdin sequentially.
    ! Call this before the OMP parallel region.
    !
    implicit none
    type(tower_config_type), intent(out) :: configs(n)
    integer,                 intent(in)  :: n
    integer :: i
    !---------------------------------------------------------------------

    do i = 1, n
      call read_one_config(configs(i))
    end do

  end subroutine read_all_configs

  !-----------------------------------------------------------------------
  subroutine read_one_config (cfg)
    !
    ! !DESCRIPTION:
    ! Read one &clmML_inparm block from stdin, resolve tower index, compute ntim.
    !
    ! !USES:
    use clm_varctl,       only : iulog
    use clmSoilOptionMod, only : clm_phys, nlev_soil_adjust
    use TowerDataMod,     only : ntower, tower_id, tower_time
    use MLclm_varctl,     only : met_type, dpai_min, pftcon_val
    !
    implicit none
    type(tower_config_type), intent(out) :: cfg
    !
    ! Namelist variables (local — read into these, then copied into cfg)
    character(len=6)   :: tower_name
    character(len=6)   :: stop_option
    integer            :: start_ymd, start_tod, stop_n
    integer            :: clm_start_ymd, clm_start_tod
    character(len=256) :: fin_tower, fin_clm, fin_soil_adjust, dirout
    integer            :: i, dtstep_local, steps_per_day

    namelist /clmML_inparm/ tower_name, start_ymd, start_tod, stop_option,  &
      stop_n, fin_tower, fin_clm, clm_start_ymd, clm_start_tod, clm_phys,   &
      fin_soil_adjust, nlev_soil_adjust, dirout, met_type, dpai_min, pftcon_val
    !---------------------------------------------------------------------

    ! Defaults (same as old control())
    tower_name       = ' '
    start_ymd        = 0
    start_tod        = 0
    stop_option      = ' '
    stop_n           = 0
    clm_start_ymd    = 0
    clm_start_tod    = 0
    fin_tower        = ' '
    fin_clm          = ' '
    clm_phys         = ' '
    fin_soil_adjust  = ' '
    nlev_soil_adjust = 0
    dirout           = ' '
    met_type         = 0
    dpai_min         = 0.01_r8
    pftcon_val       = 0

    write(iulog,*) 'Attempting to read namelist file .....'
    read (5, clmML_inparm)
    write(iulog,*) 'Successfully read namelist file'

    ! Resolve tower_name to an integer index
    cfg%tower_idx = 0
    do i = 1, ntower
      if (tower_name == tower_id(i)) then
        cfg%tower_idx = i
        exit
      end if
    end do
    if (cfg%tower_idx == 0) then
      write (iulog,*) 'read_one_config error: tower site = ', tower_name, ' not found'
      call endrun()
    end if

    ! Compute number of timesteps (same logic as old control())
    dtstep_local = tower_time(cfg%tower_idx) * 60
    if (stop_option == 'nsteps') then
      cfg%ntim = stop_n
    else if (stop_option == 'ndays') then
      steps_per_day = 86400 / dtstep_local
      cfg%ntim      = steps_per_day * stop_n
    end if

    ! Pack everything into the struct
    cfg%tower_name      = tower_name
    cfg%start_ymd       = start_ymd
    cfg%start_tod       = start_tod
    cfg%stop_option     = stop_option
    cfg%stop_n          = stop_n
    cfg%clm_start_ymd   = clm_start_ymd
    cfg%clm_start_tod   = clm_start_tod
    cfg%fin_tower       = fin_tower
    cfg%fin_clm         = fin_clm
    cfg%clm_phys        = clm_phys
    cfg%fin_soil_adjust = fin_soil_adjust
    cfg%nlev_soil_adjust= nlev_soil_adjust
    cfg%dirout          = dirout
    cfg%met_type        = met_type
    cfg%dpai_min        = dpai_min
    cfg%pftcon_val      = pftcon_val

  end subroutine read_one_config

  !-----------------------------------------------------------------------
  subroutine apply_config (cfg)
    !
    ! !DESCRIPTION:
    ! Apply a pre-read config to THREADPRIVATE module globals.
    ! Called inside the OMP parallel region at the top of CLMml_drv,
    ! replacing the old control() call that read from stdin.
    !
    ! !USES:
    use clm_time_manager, only : start_date_ymd, start_date_tod, dtstep
    use clmSoilOptionMod, only : clm_phys, nlev_soil_adjust
    use TowerDataMod,     only : tower_num, tower_time
    use MLclm_varctl,     only : met_type, dpai_min, pftcon_val
    !
    implicit none
    type(tower_config_type), intent(in) :: cfg
    !---------------------------------------------------------------------

    tower_num        = cfg%tower_idx
    start_date_ymd   = cfg%start_ymd
    start_date_tod   = cfg%start_tod
    dtstep           = tower_time(tower_num) * 60
    clm_phys         = cfg%clm_phys
    nlev_soil_adjust = cfg%nlev_soil_adjust
    met_type         = cfg%met_type
    dpai_min         = cfg%dpai_min
    pftcon_val       = cfg%pftcon_val

  end subroutine apply_config

end module controlMod
