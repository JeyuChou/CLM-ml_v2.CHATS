module CLMml_driver

  !-----------------------------------------------------------------------
  ! !DESCRIPTION:
  ! Model driver — split into a serial global-init phase and a per-clump
  ! simulation phase so the latter can run inside an OpenMP parallel region.
  !
  ! !USES:
  use abortutils, only : endrun
  use clm_varctl, only : iulog
  use decompMod, only : bounds_type
  use shr_kind_mod, only : r8 => shr_kind_r8
  !
  ! !PUBLIC TYPES:
  implicit none
  !
  ! !PUBLIC MEMBER FUNCTIONS:
  public :: CLMml_global_init    ! Serial one-time setup (call before any parallel region)
  public :: CLMml_run_clump      ! Per-clump simulation — thread-safe
  !
  ! !PRIVATE MEMBER FUNCTIONS:
  private :: init_acclim          ! Read tower meteorology data to get acclimation temperature
  private :: TowerVeg             ! Initialize tower vegetation
  private :: SoilInit             ! Initialize soil temperature and moisture profile
  private :: output               ! Write output files
  private :: ReadCanopyProfiles   ! Read T,Q,U profile data
  !-----------------------------------------------------------------------

contains

  !-----------------------------------------------------------------------
  subroutine CLMml_global_init (bounds_proc, ntim, fin_tower, fin_clm, fin_soil_adjust, &
                                 dirout, start_calday_clm, yr, mon)
    !
    ! !DESCRIPTION:
    ! Serial initialization: reads namelist, builds CLM data structures across
    ! all clumps (bounds_proc spans [1:numg]), computes orbital parameters,
    ! and derives the CLM history-file calendar offset (start_calday_clm).
    ! Must complete before any CLMml_run_clump call.
    !
    ! !USES:
    use clm_instMod
    use clm_time_manager, only : start_date_ymd, start_date_tod, curr_date_tod, dtstep, itim
    use clm_time_manager, only : get_curr_date, get_curr_calday
    use clm_varorb, only : eccen, mvelpp, lambm0, obliqr
    use controlMod, only : control
    use lnd_comp_nuopc, only : InitializeRealize
    use shr_orb_mod, only : shr_orb_params
    use TowerDataMod, only : tower_id, tower_num
    !
    ! !ARGUMENTS:
    implicit none
    type(bounds_type), intent(in) :: bounds_proc         ! Proc-level bounds [1:numg]
    integer,           intent(out) :: ntim               ! Number of time steps
    character(len=256), intent(out) :: fin_tower         ! Tower met file
    character(len=256), intent(out) :: fin_clm           ! CLM history file
    character(len=256), intent(out) :: fin_soil_adjust   ! Soil moisture adjustment file
    character(len=256), intent(out) :: dirout            ! Output directory
    real(r8),           intent(out) :: start_calday_clm  ! Calendar day of CLM history file start
    integer,            intent(out) :: yr                ! Year of simulation start
    integer,            intent(out) :: mon               ! Month of simulation start
    !
    ! !LOCAL VARIABLES:
    real(r8) :: obliq, mvelp
    integer  :: day
    integer  :: run_start_date, run_start_tod
    integer  :: clm_start_ymd, clm_start_tod
    !---------------------------------------------------------------------

    ! Read namelist control variables

    call control (ntim, clm_start_ymd, clm_start_tod, fin_tower, fin_clm, fin_soil_adjust, dirout)

    ! Get simulation start year and month

    itim = 1
    call get_curr_date (yr, mon, day, curr_date_tod)
    write (iulog,*) 'Processing: ', tower_id(tower_num), yr, mon

    ! Initialize CLM data structures for all clumps

    call InitializeRealize (bounds_proc)

    ! Orbital parameters for this year

    call shr_orb_params (yr, eccen, obliq, mvelp, obliqr, lambm0, mvelpp)

    ! Compute calendar day of the first time slice in the CLM history file.
    ! Temporarily replaces start_date with the CLM file start — serial only.

    run_start_date = start_date_ymd
    run_start_tod  = start_date_tod

    start_date_ymd = clm_start_ymd
    start_date_tod = clm_start_tod
    itim = 1
    start_calday_clm = get_curr_calday(offset=0)

    start_date_ymd = run_start_date
    start_date_tod = run_start_tod
    itim = 1

  end subroutine CLMml_global_init

  !-----------------------------------------------------------------------
  subroutine CLMml_run_clump (bounds, nc, ntim, fin_tower, fin_clm, fin_soil_adjust, &
                               dirout, start_calday_clm, yr, mon)
    !
    ! !DESCRIPTION:
    ! Per-clump simulation. Thread-safe: all state is accessed through
    ! bounds%clump_index.  Output file unit numbers are deterministic
    ! (nc*10+offset) to avoid getavu() races across threads.
    !
    ! !USES:
    use clm_instMod
    use MLclm_varctl, only : flux_profile_type, met_type
    use clm_time_manager, only : dtstep, itim
    use clm_time_manager, only : get_curr_date, get_curr_calday, get_curr_time
    use filterMod, only : setFilters, filter
    use lnd_comp_nuopc, only : ModelAdvance
    use PatchType, only : patch
    use TowerDataMod, only : tower_id, tower_num
    use TowerMetMod, only : TowerMetCurr, TowerMetNext
    !
    ! !ARGUMENTS:
    implicit none
    type(bounds_type), intent(in) :: bounds
    integer,           intent(in) :: nc               ! Clump index (= thread index)
    integer,           intent(in) :: ntim             ! Number of time steps
    character(len=256), intent(in) :: fin_tower
    character(len=256), intent(in) :: fin_clm
    character(len=256), intent(in) :: fin_soil_adjust
    character(len=256), intent(in) :: dirout
    real(r8),           intent(in) :: start_calday_clm
    integer,            intent(in) :: yr, mon         ! Run start year / month (for filenames)
    !
    ! !LOCAL VARIABLES:
    integer  :: itim_next
    integer  :: time_indx
    integer  :: curr_time_day, curr_time_sec
    integer  :: yr_loc, mon_loc, day_loc, tod_loc
    real(r8) :: curr_calday
    integer  :: nout1, nout2, nout3, nout4, nout5, nout6, nin1
    character(len=256) :: ext, fout1, fout2, fout3, fout4, fout5, fout6, fin1
    !---------------------------------------------------------------------

    ! Deterministic per-clump unit numbers (avoids getavu() which is not thread-safe)

    nout1 = nc*10 + 1
    nout2 = nc*10 + 2
    nout3 = nc*10 + 3
    nout4 = nc*10 + 4
    nout5 = nc*10 + 5
    nout6 = nc*10 + 6

    ! Set CLM filters for this clump

    call setFilters (filter(nc), bounds%begp, bounds%begc)

    ! Read tower meteorology to accumulate acclimation temperature

    call init_acclim (fin_tower, tower_num, ntim, bounds%begp, bounds%endp, &
    atm2lnd_inst, wateratm2lndbulk_inst, temperature_inst, frictionvel_inst, mlcanopy_inst)

    ! Initialize tower vegetation

    call TowerVeg (tower_num, bounds%begp, bounds%endp, canopystate_inst, mlcanopy_inst)

    ! Find the CLM history file time index for the simulation start

    itim = 1
    curr_calday = get_curr_calday(offset=0)
    time_indx = nint((curr_calday - start_calday_clm) * 86400._r8 / float(dtstep)) + 1

    ! Read CLM history file to initialize soil temperature and moisture

    call SoilInit (fin_clm, time_indx, bounds%begc, bounds%endc, soilstate_inst, &
    waterstatebulk_inst, temperature_inst)

    !---------------------------------------------------------------
    ! Open per-clump output files.  Filenames include clump index nc
    ! so parallel runs produce distinct files without collisions.
    !---------------------------------------------------------------

    write (ext,'(a6,"_",i4.4,"-",i2.2,"_c",i2.2,"_flux.out")') tower_id(tower_num),yr,mon,nc
    fout1 = trim(dirout)//trim(ext)
    open (unit=nout1, file=trim(fout1), action="write")

    write (ext,'(a6,"_",i4.4,"-",i2.2,"_c",i2.2,"_aux.out")') tower_id(tower_num),yr,mon,nc
    fout2 = trim(dirout)//trim(ext)
    open (unit=nout2, file=trim(fout2), action="write")

    write (ext,'(a6,"_",i4.4,"-",i2.2,"_c",i2.2,"_profile.out")') tower_id(tower_num),yr,mon,nc
    fout3 = trim(dirout)//trim(ext)
    open (unit=nout3, file=trim(fout3), action="write")

    write (ext,'(a6,"_",i4.4,"-",i2.2,"_c",i2.2,"_fsun.out")') tower_id(tower_num),yr,mon,nc
    fout4 = trim(dirout)//trim(ext)
    open (unit=nout4, file=trim(fout4), action="write")

    write (ext,'(a6,"_",i4.4,"-",i2.2,"_c",i2.2,"_fluxprofile.out")') tower_id(tower_num),yr,mon,nc
    fout5 = trim(dirout)//trim(ext)
    open (unit=nout5, file=trim(fout5), action="write")

    write (ext,'(a6,"_",i4.4,"-",i2.2,"_c",i2.2,"_soiltemp.out")') tower_id(tower_num),yr,mon,nc
    fout6 = trim(dirout)//trim(ext)
    open (unit=nout6, file=trim(fout6), action="write")

    if (flux_profile_type .eq. -1) then
       call endrun (msg=' ERROR: flux_profile_type not supported')
       nin1 = nc*10 + 7
       write (ext,'(a6,"_",i4.4,"-",i2.2,"_profile.out")') tower_id(tower_num),yr,mon
       fin1 = 'set_file_name'
       open (unit=nin1, file=trim(fin1), action="read")
    end if

    !---------------------------------------------------------------
    ! Time stepping loop
    !---------------------------------------------------------------

    write (iulog,*) 'Starting time stepping loop (clump ', nc, ') .....'

    do itim = 1, ntim

       ! yr_loc/mon_loc/day_loc/tod_loc are local; avoids writing to the shared
       ! curr_date_tod module variable from multiple threads simultaneously.

       call get_curr_date (yr_loc, mon_loc, day_loc, tod_loc)
       call get_curr_time (curr_time_day, curr_time_sec)
       curr_calday = get_curr_calday(offset=0)

       time_indx = nint((curr_calday - start_calday_clm) * 86400._r8 / float(dtstep)) + 1

       call TowerMetCurr (fin_tower, itim, tower_num, bounds%begp, bounds%endp, atm2lnd_inst, &
       wateratm2lndbulk_inst, frictionvel_inst)

       if (met_type == 3) then
          itim_next = min(itim+1, ntim)
          call TowerMetNext (fin_tower, itim_next, bounds%begp, bounds%endp, mlcanopy_inst)
       end if

       if (flux_profile_type .eq. -1) call ReadCanopyProfiles (itim, curr_calday, nin1, mlcanopy_inst)

       call ModelAdvance (bounds, time_indx, fin_clm, fin_soil_adjust)
       if (itim == 1) write (iulog,*) 'Executing model (clump ', nc, ') .....'

       call output (curr_calday, tower_num, bounds%begp, bounds%begc, &
       nout1, nout2, nout3, nout4, nout5, nout6, mlcanopy_inst, temperature_inst)

    end do

    !---------------------------------------------------------------
    ! Close output files
    !---------------------------------------------------------------

    close (nout1)
    close (nout2)
    close (nout3)
    close (nout4)
    close (nout5)
    close (nout6)

    if (flux_profile_type .eq. -1) close (nin1)

    write (iulog,*) 'Successfully finished simulation (clump ', nc, ')'

  end subroutine CLMml_run_clump

  !-----------------------------------------------------------------------
  subroutine init_acclim (fin, tower_num, ntim, begp, endp, &
  atm2lnd_inst, wateratm2lndbulk_inst, temperature_inst, frictionvel_inst, mlcanopy_inst)
    !
    ! !DESCRIPTION:
    ! Read tower meteorology data once to get acclimation temperature
    !
    ! !USES:
    use PatchType, only : patch
    use TowerMetMod, only : TowerMetCurr
    use atm2lndType, only : atm2lnd_type
    use wateratm2lndBulkType, only : wateratm2lndbulk_type
    use TemperatureType, only : temperature_type
    use FrictionVelocityMod, only : frictionvel_type
    use MLCanopyFluxesType, only : mlcanopy_type
    !
    ! !ARGUMENTS:
    implicit none
    character(len=*), intent(in) :: fin     ! Tower meteorology file
    integer, intent(in) :: tower_num        ! Tower site index
    integer, intent(in) :: ntim             ! Number of time slices to process
    integer, intent(in) :: begp, endp       ! First and last patch
    type(atm2lnd_type), intent(inout) :: atm2lnd_inst
    type(wateratm2lndbulk_type), intent(inout) :: wateratm2lndbulk_inst
    type(temperature_type), intent(inout) :: temperature_inst
    type(frictionvel_type), intent(inout) :: frictionvel_inst
    type(mlcanopy_type), intent(inout) :: mlcanopy_inst
    !
    ! !LOCAL VARIABLES:
    integer  :: p                           ! Patch index for CLM g/l/c/p hierarchy
    integer  :: c                           ! Column index for CLM g/l/c/p hierarchy
    integer  :: itim                        ! Local time index (shadows module var intentionally)
    !---------------------------------------------------------------------

    associate ( &
    forc_t    => atm2lnd_inst%forc_t_downscaled_col   , & ! CLM: Atmospheric temperature (K)
    forc_pbot => atm2lnd_inst%forc_pbot_downscaled_col, & ! CLM: Atmospheric pressure (Pa)
    t10       => temperature_inst%t_a10_patch         , & ! CLM: Average air temperature for acclimation (K)
    pref      => mlcanopy_inst%pref_forcing             & ! Air pressure at reference height (Pa)
    )

    ! Initialize accumulator to zero

    do p = begp, endp
       t10(p) = 0._r8
    end do

    ! Loop over all time slices to read tower data

    do itim = 1, ntim

       ! Read temperature for this time slice

       call TowerMetCurr (fin, itim, tower_num, begp, endp, atm2lnd_inst, &
       wateratm2lndbulk_inst, frictionvel_inst)

       do p = begp, endp
          c = patch%column(p)

          ! Sum temperature

          t10(p) = t10(p) + forc_t(c)

          ! Save pressure for first timestep (used only if reading Q vertical profile from dataset)

          if (itim == 1) pref(p) = forc_pbot(c)
       end do

    end do

    ! Average temperature over all time slices

    do p = begp, endp
       t10(p) = t10(p) / float(ntim)
    end do

    end associate
  end subroutine init_acclim

  !-----------------------------------------------------------------------
  subroutine TowerVeg (it, begp, endp, canopystate_inst, mlcanopy_inst)
    !
    ! !DESCRIPTION:
    ! Initialize tower vegetation
    !
    ! !USES:
    use clm_varpar, only : mxpft
    use PatchType, only : patch
    use TowerDataMod, only : tower_pft, tower_canht, tower_root, tower_pbeta_lai, tower_pbeta_sai
    use CanopyStateType, only : canopystate_type
    use MLCanopyFluxesType, only : mlcanopy_type
    !
    ! !ARGUMENTS:
    implicit none
    integer, intent(in) :: it                    ! Tower site index
    integer, intent(in) :: begp, endp            ! First and last patch
    type(canopystate_type), intent(inout) :: canopystate_inst
    type(mlcanopy_type), intent(inout) :: mlcanopy_inst
    !
    ! !LOCAL VARIABLES:
    integer  :: p                                ! Patch index for CLM g/l/c/p hierarchy

    ! CLM top canopy height, by PFTs

    real(r8) :: htop_pft(0:mxpft)                ! CLM canopy top height, by PFT (m)
    data htop_pft(0) / 0._r8 /
    data htop_pft(1:16) / 17._r8, 17._r8, 14._r8, 35._r8, 35._r8, 18._r8, 20._r8, 20._r8, &
                          0.5_r8, 0.5_r8, 0.5_r8, 0.5_r8, 0.5_r8, 0.5_r8, 0.5_r8, 0.5_r8 /
    data htop_pft(17:mxpft) / 62*0 /
    !---------------------------------------------------------------------

    associate ( &
    htop         => canopystate_inst%htop_patch,       &  ! CLM: canopy height (m)
    root_biomass => mlcanopy_inst%root_biomass_canopy, &  ! Fine root biomass (g biomass / m2)
    pbeta_lai    => mlcanopy_inst%pbeta_lai_canopy   , &  ! Parameters for the leaf area density 2-parameter beta distribution (-)
    pbeta_sai    => mlcanopy_inst%pbeta_sai_canopy     &  ! Parameters for the stem area density 2-parameter beta distribution (-)
    )

    do p = begp, endp

       ! PFT

       patch%itype(p) = tower_pft(it)

       ! Use tower value if set in TowerDataMod

       if (tower_canht(it) > 0._r8) then
          htop(p) = tower_canht(it)
       else
          htop(p) = htop_pft(patch%itype(p))
       end if

       ! Use root biomass if set in TowerDataMod

       if (tower_root(it) > 0._r8) then
          root_biomass(p) = tower_root(it)
       else
          call endrun (msg=' TowerVeg ERROR: invalid root biomass')
       end if

      ! Use tower values if set in TowerDataMod. Otherwise, these are set to PFT values in subroutine getPADparameters

      if (tower_pbeta_lai(it,1) > 0._r8 .and. tower_pbeta_lai(it,2) > 0._r8 .and. &
      tower_pbeta_sai(it,1) > 0._r8 .and. tower_pbeta_sai(it,2) > 0._r8) then
          pbeta_lai(p,1) = tower_pbeta_lai(it,1)
          pbeta_lai(p,2) = tower_pbeta_lai(it,2)
          pbeta_sai(p,1) = tower_pbeta_sai(it,1)
          pbeta_sai(p,2) = tower_pbeta_sai(it,2)
      end if

    end do

    end associate
  end subroutine TowerVeg

  !-----------------------------------------------------------------------
  subroutine SoilInit (ncfilename, strt, begc, endc, soilstate_inst, &
  waterstatebulk_inst, temperature_inst)
    !
    ! !DESCRIPTION:
    ! Initialize soil temperature and soil moisture profile from CLM netcdf
    ! history file
    !
    ! !USES:
    use abortutils, only : handle_err
    use clm_varcon, only : denh2o
    use clm_varpar, only : nlevgrnd, nlevsoi
    use ColumnType, only : col
    use SoilStateType, only : soilstate_type
    use WaterStateBulkType, only : waterstatebulk_type
    use TemperatureType, only : temperature_type
    use clmSoilOptionMod, only : clm_phys
    !
    ! !ARGUMENTS:
    implicit none
    include 'netcdf.inc'
    character(len=*), intent(in) :: ncfilename ! CLM netcdf filename
    integer, intent(in) :: strt                ! Current time slice of data to retrieve from CLM history file
    integer, intent(in) :: begc, endc          ! First and last column
    type(soilstate_type), intent(in) :: soilstate_inst
    type(waterstatebulk_type), intent(inout) :: waterstatebulk_inst
    type(temperature_type), intent(inout) :: temperature_inst
    !
    ! !LOCAL VARIABLES:
    integer  :: c                              ! Column index for CLM g/l/c/p hierarchy
    integer  :: j                              ! Soil layer index
    integer  :: ncid                           ! netcdf file ID
    integer  :: status                         ! Function return status
    integer  :: varid                          ! netcdf variable id
    integer  :: start3(3), count3(3)           ! Start and count arrays for reading 3-D data from netcdf files
    real(r8) :: tsoi_loc(1,1,nlevgrnd)         ! CLM: soil temperature (K)
    real(r8) :: h2osoi_loc_clm45(1,1,nlevgrnd) ! CLM4.5: volumetric soil moisture (m3/m3)
    real(r8) :: h2osoi_loc_clm50(1,1,nlevsoi)  ! CLM5.0: volumetric soil moisture (m3/m3)
    !---------------------------------------------------------------------

    associate ( &
    dz          => col%dz                         , &  ! CLM: Soil layer thickness (m)
    nbedrock    => col%nbedrock                   , &  ! CLM: Depth to bedrock index
    watsat      => soilstate_inst%watsat_col      , &  ! CLM: Soil layer volumetric water content at saturation (porosity)
    t_soisno    => temperature_inst%t_soisno_col  , &  ! CLM: Soil temperature (K)
    h2osoi_vol  => waterstatebulk_inst%h2osoi_vol_col, &  ! CLM: Soil layer volumetric water content (m3/m3)
    h2osoi_ice  => waterstatebulk_inst%h2osoi_ice_col, &  ! CLM: Soil layer ice lens (kg H2O/m2)
    h2osoi_liq  => waterstatebulk_inst%h2osoi_liq_col  &  ! CLM: Soil layer liquid water (kg H2O/m2)
    )

    ! Open file — nf_nowrite allows concurrent readers from multiple threads

    status = nf_open(ncfilename, nf_nowrite, ncid)
    if (status /= nf_noerr) call handle_err(status, ncfilename)

    ! Dimensions in FORTRAN are in column major order: the first array index
    ! varies the most rapidly. In NetCDF file the dimensions appear in the
    ! opposite order: lat, lon (2-D); time, lat, lon (3-D); time, levgrnd, lat,
    ! lon (4-D)

    start3 = (/ 1,  1, strt /)

    ! Read TSOI(nlndgrid, nlevgrnd, ntime): soil temperature

    status = nf_inq_varid(ncid, "TSOI", varid)
    if (status /= nf_noerr) call handle_err(status, "TSOI")

    count3 = (/ 1, nlevgrnd, 1 /)
    status = nf_get_vara_double(ncid, varid, start3, count3, tsoi_loc)
    if (status /= nf_noerr) call handle_err(status, "tsoi_loc")

    ! Read H2OSOI(nlndgrid, nlevgrnd, ntime): volumetric soil water

    status = nf_inq_varid(ncid, "H2OSOI", varid)
    if (status /= nf_noerr) call handle_err(status, "H2OSOI")

    if (clm_phys == 'CLM4_5') then
       count3 = (/ 1, nlevgrnd, 1 /)
       status = nf_get_vara_double(ncid, varid, start3, count3, h2osoi_loc_clm45)
       if (status /= nf_noerr) call handle_err(status, "h2osoi_loc_clm45")
    else if (clm_phys == 'CLM5_0') then
       count3 = (/ 1, nlevsoi, 1 /)
       status = nf_get_vara_double(ncid, varid, start3, count3, h2osoi_loc_clm50)
       if (status /= nf_noerr) call handle_err(status, "h2osoi_loc_clm50")
    end if

    ! Close file

    status = nf_close(ncid)

    ! Copy data to model variables

    do c = begc, endc

       do j = 1, nlevgrnd
          t_soisno(c,j) = tsoi_loc(1,1,j)
       end do

       if (clm_phys == 'CLM4_5') then
          do j = 1, nlevgrnd
             h2osoi_vol(c,j) = h2osoi_loc_clm45(1,1,j)
          end do
       else if (clm_phys == 'CLM5_0') then
          do j = 1, nlevsoi
             h2osoi_vol(c,j) = h2osoi_loc_clm50(1,1,j)
          end do
          do j = nlevsoi+1, nlevgrnd
             h2osoi_vol(c,j) = 0._r8
          end do
       end if

       ! Limit hydrologically active soil layers to <= watsat. This is needed
       ! because the model's porosity (watsat) is not exactly the same as in
       ! CLM5.

       if (clm_phys == 'CLM5_0') then
          do j = 1, nbedrock(c)
             h2osoi_vol(c,j) = min(h2osoi_vol(c,j), watsat(c,j))
          end do
       end if

       ! Set liquid water and ice

       do j = 1, nlevgrnd
          h2osoi_liq(c,j) = h2osoi_vol(c,j) * dz(c,j) * denh2o
          h2osoi_ice(c,j) = 0._r8
       end do

    end do

    end associate
  end subroutine SoilInit

  !-----------------------------------------------------------------------
  subroutine output (curr_calday, it, begp, begc, nout1, nout2, nout3, nout4, nout5, nout6, &
  mlcan, temperature_inst)
    !
    ! !DESCRIPTION:
    ! Write output
    !
    ! !USES:
    use clm_varcon, only : tfrz
    use clm_varpar, only : ivis, inir
    use ColumnType, only : col
    use clm_time_manager, only : dtstep
    use MLclm_varcon, only : mmdry, mmh2o
    use MLclm_varctl, only : met_type
    use MLclm_varpar, only : isun, isha
    use MLCanopyFluxesType, only : mlcanopy_type
    use TemperatureType, only : temperature_type
    use MLWaterVaporMod, only : LatVap
    use TowerDataMod, only : tower_id
    !
    ! !ARGUMENTS:
    implicit none
    real(r8), intent(in) :: curr_calday  ! Current calendar day
    integer, intent(in)  :: it           ! Tower index: Tower name is tower_id(it)
    integer, intent(in)  :: begp         ! First patch index for this clump
    integer, intent(in)  :: begc         ! First column index for this clump
    integer, intent(in)  :: nout1        ! Fortran unit number for output files
    integer, intent(in)  :: nout2        ! Fortran unit number for output files
    integer, intent(in)  :: nout3        ! Fortran unit number for output files
    integer, intent(in)  :: nout4        ! Fortran unit number for output files
    integer, intent(in)  :: nout5        ! Fortran unit number for output files
    integer, intent(in)  :: nout6        ! Fortran unit number for output files
    type(mlcanopy_type), intent(in) :: mlcan
    type(temperature_type), intent(in) :: temperature_inst
    !
    ! !LOCAL VARIABLES:
    integer  :: ic                     ! Aboveground layer index
    integer  :: top                    ! Top canopy layer index
    integer  :: mid                    ! Mid-canopy layer index
    integer  :: p                      ! Patch index for CLM g/l/c/p hierarchy
    integer  :: c                      ! Column index for CLM g/l/c/p hierarchy
    real(r8) :: swup                   ! Reflected solar radiation (W/m2)
    real(r8) :: tair                   ! Air temperature (K)
    real(r8) :: qair                   ! Specific humidity (g/kg)
    real(r8) :: eair                   ! Vapor pressure (kPa)
    real(r8) :: ra                     ! Aerodynamic resistance (s/m)
    real(r8) :: lad                    ! Plant area density (m2/m3)
    real(r8) :: missing_value          ! Missing value
    real(r8) :: zero_value             ! Zero
    real(r8) :: shf, lhf               ! Vertical flux profiles (W/m2)
    real(r8) :: mflx                   ! Vertical momentum flux profile (m2/s2)
    real(r8) :: lhflx_tr, lhflx_ev     ! Transpiration and canopy evaporation (W/m2)
    real(r8) :: time_stamp             ! Calendar day for output files
    !---------------------------------------------------------------------

    missing_value = -999._r8
    zero_value = 0._r8

    p = begp
    c = begc

    ! Adjust calendar used for output

    select case (met_type)
    case (0)
       ! Time is at end of timestep
       time_stamp = curr_calday
    case (3)
       ! Time is centered in timestep
       time_stamp = curr_calday - 0.5_r8 * dtstep / 86400._r8
    case (2)
       ! Time is at end of timestep
       time_stamp = curr_calday
       call endrun (msg=' ERROR: met_type not valid')
    end select

    ! -----------------------------------------------
    ! Output file ...flux.out - Canopy and soil fluxes
    ! -----------------------------------------------

    swup = mlcan%albcan_canopy(p,ivis)*(mlcan%swskyb_forcing(p,ivis)+mlcan%swskyd_forcing(p,ivis)) &
         + mlcan%albcan_canopy(p,inir)*(mlcan%swskyb_forcing(p,inir)+mlcan%swskyd_forcing(p,inir))

    ! Note that lhflx_canopy is the vertical flux at the top of the canopy. This
    ! is not the same as the total source fluxes from the leaves and soil, i.e.,
    ! lhflx_canopy /= lhflx_tr + lhflx_ev + lhsoi_soil

    lhflx_tr = mlcan%trveg_canopy(p) * LatVap(mlcan%tref_forcing(p))
    lhflx_ev = mlcan%evveg_canopy(p) * LatVap(mlcan%tref_forcing(p))
    ic = mlcan%ntop_canopy(p)
    tair = mlcan%tair_profile(p,ic)

    write (nout1,'(f12.7,17f10.3)') time_stamp, mlcan%rnet_canopy(p), mlcan%stflx_air_canopy(p), mlcan%shflx_canopy(p), &
    mlcan%lhflx_canopy(p), mlcan%gppveg_canopy(p), mlcan%ustar_canopy(p), swup, mlcan%lwup_canopy(p), &
    tair, mlcan%gsoi_soil(p), mlcan%rnsoi_soil(p), mlcan%shsoi_soil(p), mlcan%lhsoi_soil(p), &
    lhflx_tr, lhflx_ev, mlcan%beta_canopy(p), mlcan%stflx_veg_canopy(p)

    ! -----------------------------------------------------
    ! Output file ...fsun.out - Sunlit/shaded canopy fluxes
    ! -----------------------------------------------------

    write (nout4,'(32f10.3)') mlcan%solar_zen_forcing(p)*180._r8/3.1415927_r8, &
    mlcan%swskyb_forcing(p,ivis)+mlcan%swskyd_forcing(p,ivis), &
    mlcan%lai_canopy(p)+mlcan%sai_canopy(p), mlcan%laisun_canopy(p), mlcan%laisha_canopy(p), &
    mlcan%swveg_canopy(p,ivis), mlcan%swvegsun_canopy(p,ivis), mlcan%swvegsha_canopy(p,ivis), &
    mlcan%gppveg_canopy(p), mlcan%gppvegsun_canopy(p), mlcan%gppvegsha_canopy(p), &
    mlcan%lhveg_canopy(p), mlcan%lhvegsun_canopy(p), mlcan%lhvegsha_canopy(p), &
    mlcan%shveg_canopy(p), mlcan%shvegsun_canopy(p), mlcan%shvegsha_canopy(p), &
    mlcan%vcmax25veg_canopy(p), mlcan%vcmax25sun_canopy(p), mlcan%vcmax25sha_canopy(p), &
    mlcan%gsveg_canopy(p), mlcan%gsvegsun_canopy(p), mlcan%gsvegsha_canopy(p), &
    mlcan%windveg_canopy(p), mlcan%windvegsun_canopy(p), mlcan%windvegsha_canopy(p), &
    mlcan%tlveg_canopy(p), mlcan%tlvegsun_canopy(p), mlcan%tlvegsha_canopy(p), &
    mlcan%taveg_canopy(p), mlcan%tavegsun_canopy(p), mlcan%tavegsha_canopy(p)

    ! ----------------------------------------------------------------------
    ! Output file ...aux.out - Leaf water potential and soil moisture stress
    ! ----------------------------------------------------------------------

    top = mlcan%ntop_canopy(p)
    mid = max(1, mlcan%nbot_canopy(p) + (mlcan%ntop_canopy(p)-mlcan%nbot_canopy(p)+1)/2 - 1)

    write (nout2,'(f10.4,5f10.3)') mlcan%btran_soil(p), mlcan%lsc_profile(p,top), mlcan%psis_soil(p), &
    mlcan%lwp_mean_profile(p,top), mlcan%lwp_mean_profile(p,mid), mlcan%fracminlwp_canopy(p)

    ! ----------------------------------------------
    ! Output file ...profile.out - Vertical profiles
    ! ----------------------------------------------

    ! Above canopy layers

    do ic = mlcan%ncan_canopy(p), mlcan%ntop_canopy(p)+1, -1
       tair = mlcan%tair_profile(p,ic)
       qair = 1000._r8 * (mmh2o/mmdry) * mlcan%eair_profile(p,ic) &
            / (mlcan%pref_forcing(p) - (1._r8-mmh2o/mmdry) * mlcan%eair_profile(p,ic))
       eair = mlcan%eair_profile(p,ic) / 1000._r8
       ra = mlcan%rhomol_forcing(p) / mlcan%gac_profile(p,ic)
       lad = mlcan%dpai_profile(p,ic) / mlcan%dz_profile(p,ic)

       write (nout3,'(f12.7,27f10.3)') time_stamp, mlcan%zs_profile(p,ic), zero_value, &
       zero_value, zero_value, zero_value, &
       missing_value, missing_value, &
       missing_value, missing_value, &
       missing_value, missing_value, &
       missing_value, missing_value, &
       missing_value, missing_value, &
       missing_value, missing_value, &
       missing_value, missing_value, &
       missing_value, missing_value, &
       missing_value, missing_value, &
       mlcan%wind_profile(p,ic), tair, qair, ra
    end do

    ! Within canopy layers

    do ic = mlcan%ntop_canopy(p), 1, -1
       tair = mlcan%tair_profile(p,ic)
       qair = 1000._r8 * (mmh2o/mmdry) * mlcan%eair_profile(p,ic) &
            / (mlcan%pref_forcing(p) - (1._r8-mmh2o/mmdry) * mlcan%eair_profile(p,ic))
       eair = mlcan%eair_profile(p,ic) / 1000._r8
       ra = mlcan%rhomol_forcing(p) / mlcan%gac_profile(p,ic)
       lad = mlcan%dpai_profile(p,ic) / mlcan%dz_profile(p,ic)

       if (mlcan%dpai_profile(p,ic) > 0._r8) then
          ! Leaf fluxes (per unit leaf area)
          write (nout3,'(f12.7,27f10.3)') time_stamp, mlcan%zs_profile(p,ic), mlcan%fracsun_profile(p,ic), &
          lad, lad*mlcan%fracsun_profile(p,ic), lad*(1._r8-mlcan%fracsun_profile(p,ic)), &
          mlcan%rnleaf_leaf(p,ic,isun), mlcan%rnleaf_leaf(p,ic,isha), &
          mlcan%shleaf_leaf(p,ic,isun), mlcan%shleaf_leaf(p,ic,isha), &
          mlcan%lhleaf_leaf(p,ic,isun), mlcan%lhleaf_leaf(p,ic,isha), &
          mlcan%anet_leaf(p,ic,isun), mlcan%anet_leaf(p,ic,isha), &
          mlcan%apar_leaf(p,ic,isun), mlcan%apar_leaf(p,ic,isha), &
          mlcan%gs_leaf(p,ic,isun), mlcan%gs_leaf(p,ic,isha), &
          mlcan%lwp_hist_leaf(p,ic,isun), mlcan%lwp_hist_leaf(p,ic,isha), &
          mlcan%tleaf_hist_leaf(p,ic,isun), mlcan%tleaf_hist_leaf(p,ic,isha), &
          mlcan%vcmax25_leaf(p,ic,isun), mlcan%vcmax25_leaf(p,ic,isha), &
          mlcan%wind_profile(p,ic), tair, qair, ra
       else
          ! Non-leaf layer
          write (nout3,'(f12.7,27f10.3)') time_stamp, mlcan%zs_profile(p,ic), mlcan%fracsun_profile(p,ic), &
          zero_value, zero_value, zero_value, &
          missing_value, missing_value, &
          missing_value, missing_value, &
          missing_value, missing_value, &
          missing_value, missing_value, &
          missing_value, missing_value, &
          missing_value, missing_value, &
          missing_value, missing_value, &
          missing_value, missing_value, &
          mlcan%wind_profile(p,ic), tair, qair, ra
       end if

    end do

    ! ----------------------------------------------
    ! Output file ...fluxprofile.out - Vertical flux profiles
    ! of sensible heat, latent heat, momentum, and radiation
    ! ----------------------------------------------

    do ic = mlcan%ncan_canopy(p), 1, -1

       ! etair has units mol H2O/m2/s and needs to be converted to W/m2
       !
       ! zw is the height at interface between two adjacent layers (different
       ! from zs, which is the height of the scalar concentration and source
       ! flux)

       shf = mlcan%shair_profile(p,ic)
       lhf = mlcan%etair_profile(p,ic) * LatVap(mlcan%tref_forcing(p))
       mflx = mlcan%mflx_profile(p,ic)
       write (nout5,'(f12.7,26f10.3)') time_stamp, mlcan%zw_profile(p,ic), shf, lhf, mflx, &
       mlcan%swbeam_profile(p,ic,ivis),mlcan%swbeam_profile(p,ic,inir), &
       mlcan%swdwn_profile(p,ic,ivis),mlcan%swdwn_profile(p,ic,inir), &
       mlcan%swupw_profile(p,ic,ivis),mlcan%swupw_profile(p,ic,inir), &
       mlcan%lwdwn_profile(p,ic),mlcan%lwupw_profile(p,ic)
    end do

    ! -----------------------------------------------
    ! Output file ...soiltemp.out - Soil temperature
    ! -----------------------------------------------

    write (nout6,'(f12.7,20f10.3)') time_stamp, &
    (col%z(c,ic),temperature_inst%t_soisno_col(c,ic),ic=1,10)

  end subroutine output

  !-----------------------------------------------------------------------
  subroutine ReadCanopyProfiles (itim, curr_calday, nin1, mlcanopy_inst)
    !
    ! !DESCRIPTION:
    ! Read T,Q,U profile data for current time step
    !
    ! !USES:
    use MLclm_varcon, only : mmh2o, mmdry
    use MLCanopyFluxesType, only : mlcanopy_type
    !
    ! !ARGUMENTS:
    implicit none
    integer,  intent(in) :: itim        ! Time index
    real(r8), intent(in) :: curr_calday ! Current calendar day (equals 1.000 on 0Z January 1 of current year)
    integer,  intent(in) :: nin1        ! Fortran unit number
    type(mlcanopy_type), intent(inout) :: mlcanopy_inst
    !
    ! !LOCAL VARIABLES:
    integer  :: p                       ! Patch index for CLM g/l/c/p hierarchy
    integer  :: ic                      ! Aboveground layer index
    real(r8) :: err                     ! Error check
    real(r8) :: curr_calday_data        ! Calendar day from dataset
    real(r8) :: zs_data                 ! Canopy layer height from dataset (m)
    real(r8) :: wind                    ! Canopy layer wind speed from dataset (m/s)
    real(r8) :: tair                    ! Canopy layer air temperature from dataset (K)
    real(r8) :: qair                    ! Canopy layer specific humidity from dataset (kg/kg)
    real(r8) :: x(22)                   ! Dummy variables from dataset
    integer  :: i                       ! Dummy index for x
    integer  :: nrec                    ! Number of vertical levels in data file
    real(r8) :: check                   ! Check for same calendar day
    !---------------------------------------------------------------------

    associate ( &
    ncan           => mlcanopy_inst%ncan_canopy           , &  ! Number of aboveground layers
    pref           => mlcanopy_inst%pref_forcing          , &  ! Air pressure at reference height (Pa)
    zs             => mlcanopy_inst%zs_profile            , &  ! Canopy layer height for scalar concentration and source (m)
    wind_data      => mlcanopy_inst%wind_data_profile     , &  ! Canopy layer wind speed FROM DATASET (m/s)
    tair_data      => mlcanopy_inst%tair_data_profile     , &  ! Canopy layer air temperature FROM DATASET (K)
    eair_data      => mlcanopy_inst%eair_data_profile       &  ! Canopy layer vapor pressure FROM DATASET (Pa)
    )

    ! Hardwired for one patch (flux_profile_type == -1 path is not thread-safe; it calls endrun)

    p = 1

    ! If first time step, read profile file to find number of vertical layers.
    ! Number of levels is found from records that have the same calendar day.

    if (itim == 1) then
       nrec = 0
       do
          read (nin1,'(f10.4,26f10.3)',end=100) curr_calday_data, zs_data, (x(i),i=1,22), &
          wind, tair, qair
          if (nrec == 0) check = curr_calday_data
          if (curr_calday_data == check) then
             nrec = nrec + 1
          else
             exit
          end if
       end do
100    ncan(p) = nrec
       rewind (nin1)
    end if

    ! Read profile data for the current time slice

    do ic = ncan(p), 1, -1
       read (nin1,'(f10.4,26f10.3)') curr_calday_data, zs_data, (x(i),i=1,22), &
       wind, tair, qair
       qair = qair / 1000._r8  ! g/kg -> kg/kg

       ! Error checks

       err = curr_calday_data - curr_calday
       if (abs(err) >= 1.e-04_r8) then
          call endrun (msg=' ERROR: ReadCanopyProfiles: calendar error')
       end if

       if (itim > 1) then
          err = zs_data - zs(p,ic)
          if (abs(err) >= 1.e-03_r8) then
             call endrun (msg=' ERROR: ReadCanopyProfiles: height profile error')
          end if
       end if

       wind_data(p,ic) = wind
       tair_data(p,ic) = tair
       eair_data(p,ic) = qair * pref(p) / (mmh2o / mmdry + (1._r8 - mmh2o / mmdry) * qair)
    end do

    end associate
  end subroutine ReadCanopyProfiles

end module CLMml_driver
