module ForcingBufMod

  !-----------------------------------------------------------------------
  ! In-memory buffer for tower forcing data pre-read single-threaded
  ! before the OMP parallel region.  Depends only on shr_kind_mod
  ! (no module cycles).
  !
  ! use_buffer is set .true. after all forcing arrays are populated;
  ! every reader checks this flag and returns from the buffer instead
  ! of opening a netCDF file.
  !
  ! curr_run_idx is THREADPRIVATE: each thread sets it to cfg%run_idx
  ! in apply_config so readers can index into forcing(:).
  !-----------------------------------------------------------------------

  use shr_kind_mod, only : r8 => shr_kind_r8
  implicit none

  ! Column indices into forcing%met(nmetvar, :)
  integer, parameter, public :: nmetvar    = 9
  integer, parameter, public :: imet_zbot  = 1  ! reference height (m)
  integer, parameter, public :: imet_tbot  = 2  ! air temperature (K)
  integer, parameter, public :: imet_rh    = 3  ! relative humidity (%)
  integer, parameter, public :: imet_qbot  = 4  ! specific humidity (kg/kg)
  integer, parameter, public :: imet_wind  = 5  ! wind speed (m/s)
  integer, parameter, public :: imet_fsds  = 6  ! solar radiation (W/m2)
  integer, parameter, public :: imet_flds  = 7  ! longwave radiation (W/m2)
  integer, parameter, public :: imet_pbot  = 8  ! air pressure (Pa)
  integer, parameter, public :: imet_prect = 9  ! precipitation (mm/s)

  type, public :: tower_forcing_type
    integer :: ntim_met      ! number of met time steps
    integer :: ntim_clm      ! number of CLM history time steps
    integer :: nlev_h2osoi   ! first dim of h2osoi: nlevsoi (CLM5_0) or nlevgrnd (CLM4_5)
    integer :: nlev_tsoi     ! first dim of tsoi: always nlevgrnd
    integer :: ntim_fac      ! number of factor time steps
    logical :: have_factor   ! .true. if fin_soil_adjust was provided
    real(r8), allocatable :: met(:,:)    ! (nmetvar, ntim_met)
    real(r8), allocatable :: elai(:)     ! (ntim_clm)
    real(r8), allocatable :: esai(:)     ! (ntim_clm)
    real(r8), allocatable :: h2osoi(:,:) ! (nlev_h2osoi, ntim_clm)
    real(r8), allocatable :: tsoi(:,:)   ! (nlev_tsoi, ntim_clm)
    real(r8), allocatable :: factor(:)   ! (ntim_fac)
  end type tower_forcing_type

  type(tower_forcing_type), allocatable, public :: forcing(:)  ! indexed by run_idx (1..ntower)
  logical, public :: use_buffer = .false.

  ! curr_run_idx is set by apply_config() at the top of CLMml_drv for each
  ! tower, before any reader that checks use_buffer is called.
  ! NOTE: the "= 0" initializer applies only to the master thread's copy;
  ! non-master copies are undefined until apply_config writes them.
  ! THREADPRIVATE requires apply_config to always run before any buffer read.
  ! (Stage 4a adds: curr_run_idx = cfg%run_idx to apply_config.)
  integer, public :: curr_run_idx = 0
  !$OMP THREADPRIVATE(curr_run_idx)

end module ForcingBufMod
