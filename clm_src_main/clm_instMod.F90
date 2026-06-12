module clm_instMod

  !-----------------------------------------------------------------------
  ! !DESCRIPTION:
  ! Instances and definitions of data types
  !
  ! !USES:
  use shr_kind_mod, only : r8 => shr_kind_r8
  use decompMod, only : bounds_type

  !-----------------------------------------
  ! Definition of component types
  !-----------------------------------------

  use atm2lndType                , only : atm2lnd_type
  use wateratm2lndBulkType       , only : wateratm2lndbulk_type
  use SoilStateType              , only : soilstate_type
  use WaterType                  , only : water_type
  use WaterStateBulkType         , only : waterstatebulk_type
  use WaterFluxBulkType          , only : waterfluxbulk_type
  use WaterDiagnosticBulkType    , only : waterdiagnosticbulk_type
  use CanopyStateType            , only : canopystate_type
  use TemperatureType            , only : temperature_type
  use EnergyFluxType             , only : energyflux_type
  use FrictionVelocityMod        , only : frictionvel_type
  use SurfaceAlbedoType          , only : surfalb_type
  use SolarAbsorbedType          , only : solarabs_type
  use SurfaceAlbedoMod           , only : SurfaceAlbedoInitTimeConst
  use SoilStateInitTimeConstMod  , only : SoilStateInitTimeConst
  use initVerticalMod            , only : initVertical
  use MLCanopyFluxesType         , only : mlcanopy_type !!! CLMml !!!

  implicit none
  public
  !
  !-----------------------------------------
  ! Instances of component types
  !-----------------------------------------

  type(atm2lnd_type)             :: atm2lnd_inst
  type(wateratm2lndbulk_type)    :: wateratm2lndbulk_inst
  type(soilstate_type)           :: soilstate_inst
  type(water_type)               :: water_inst
  type(waterstatebulk_type)      :: waterstatebulk_inst
  type(waterfluxbulk_type)       :: waterfluxbulk_inst
  type(waterdiagnosticbulk_type) :: waterdiagnosticbulk_inst
  type(canopystate_type)         :: canopystate_inst
  type(temperature_type)         :: temperature_inst
  type(energyflux_type)          :: energyflux_inst
  type(frictionvel_type)         :: frictionvel_inst
  type(surfalb_type)             :: surfalb_inst
  type(solarabs_type)            :: solarabs_inst
  type(mlcanopy_type)            :: mlcanopy_inst !!! CLMml !!!

  public :: clm_instInit     ! Initialize
  public :: clm_instReset    ! Re-set per-tower values (no re-allocation)
  public :: clm_instRest     ! Setup restart
  !-----------------------------------------------------------------------

contains

  !-----------------------------------------------------------------------
  subroutine clm_instInit (bounds)
    !
    ! !DESCRIPTION:
    ! Initialization of public data types
    !
    ! !ARGUMENTS:
    type(bounds_type), intent(in) :: bounds
    !---------------------------------------------------------------------

    call initVertical                  (bounds)
    call atm2lnd_inst%Init             (bounds)
    call wateratm2lndbulk_inst%Init    (bounds)
    call soilstate_inst%Init           (bounds)
    call SoilStateInitTimeConst        (bounds, soilstate_inst)
    call water_inst%Init               (bounds)
    call waterstatebulk_inst%Init      (bounds)
    call waterfluxbulk_inst%Init       (bounds)
    call waterdiagnosticbulk_inst%Init (bounds)
    call canopystate_inst%Init         (bounds)
    call temperature_inst%Init         (bounds)
    call energyflux_inst%Init          (bounds)
    call frictionvel_inst%Init         (bounds)
    call surfalb_inst%Init             (bounds)
    call solarabs_inst%Init            (bounds)
    call SurfaceAlbedoInitTimeConst    (bounds)
    call mlcanopy_inst%Init            (bounds) !!! CLMml !!!

  end subroutine clm_instInit

  !-----------------------------------------------------------------------
  subroutine clm_instReset (bounds)
    !
    ! !DESCRIPTION:
    ! Re-set per-tower values in already-allocated arrays for a new tower_num.
    ! Called instead of clm_instInit for the second and subsequent tower runs.
    ! Does NOT allocate anything — arrays were allocated by clm_instInit.
    !
    ! !USES:
    use TowerDataMod, only : tower_num, tower_pft
    use PatchType, only : patch
    !
    ! !ARGUMENTS:
    implicit none
    type(bounds_type), intent(in) :: bounds
    !
    ! !LOCAL VARIABLES:
    integer :: p
    !---------------------------------------------------------------------

    ! Update patch PFT for the new tower
    do p = bounds%begp, bounds%endp
       patch%itype(p) = tower_pft(tower_num)
    end do

    ! Re-set soil layer structure and bedrock depth for the new tower
    call initVertical              (bounds)

    ! Re-set soil hydraulic and thermal properties for the new tower
    call SoilStateInitTimeConst    (bounds, soilstate_inst)

    ! Re-set soil color class for the new tower (albedo lookup tables unchanged)
    call SurfaceAlbedoInitTimeConst(bounds)

  end subroutine clm_instReset

  !-----------------------------------------------------------------------
  subroutine clm_instRest (bounds, ncid, flag)
    !
    ! !DESCRIPTION:
    ! Define/write/read CLM restart file
    ! !USES:
    use ncdio_pio, only : file_desc_t
    !
    ! !ARGUMENTS:
    type(bounds_type) , intent(in)    :: bounds
    type(file_desc_t) , intent(inout) :: ncid ! netcdf id
    character(len=*)  , intent(in)    :: flag ! 'define', 'write', 'read'
    !---------------------------------------------------------------------

    ! Each CLM component type has a restart subroutine (shown here for example only)

!   call atm2lnd_inst%restart (bounds, ncid, flag=flag)
!   call soilstate_inst%restart (bounds, ncid, flag=flag)
!   call canopystate_inst%restart (bounds, ncid, flag=flag)

    call mlcanopy_inst%restart (bounds, ncid, flag=flag) !!! CLMml !!!

  end subroutine clm_instRest

end module clm_instMod
