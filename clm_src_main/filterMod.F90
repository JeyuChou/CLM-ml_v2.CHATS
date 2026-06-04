module filterMod

  !-----------------------------------------------------------------------
  ! !DESCRIPTION:
  ! Module of filters used for processing CLM columns and patches
  !
  ! !USES:
  use shr_kind_mod, only : r8 => shr_kind_r8
  use clm_varcon, only : ispval, nan => spval
  !
  ! !PUBLIC TYPES:
  implicit none
  save
  private
  !
  !PUBLIC DATA TYPES:

  type, public :: clumpfilter

    integer :: num_exposedvegp                ! number of patches in exposedvegp filter
    integer, pointer :: exposedvegp(:)        ! patches where frac_veg_nosno is non-zero

    integer :: num_nolakeurbanp               ! number of patches in non-lake, non-urban filter
    integer, pointer :: nolakeurbanp(:)       ! non-lake, non-urban filter (patches)

    integer :: num_nolakec                    ! number of columns in non-lake filter
    integer, pointer :: nolakec(:)            ! non-lake filter (columns)

    integer :: num_nourbanc                   ! number of columns in non-urban filter
    integer, pointer :: nourbanc(:)           ! non-urban filter (columns)

    integer :: num_hydrologyc                 ! number of columns in hydrology filter
    integer, pointer :: hydrologyc(:)         ! hydrology filter (columns)

  end type clumpfilter
  type(clumpfilter), public, target, allocatable :: filter(:)

  ! !PUBLIC MEMBER FUNCTIONS:
  public :: allocFilters                      ! Initialize data structure
  public :: setFilters                        ! Set filters
  public :: setExposedvegpFilter              ! Set the exposedvegp filter
  !-----------------------------------------------------------------------

contains

  !-----------------------------------------------------------------------
  subroutine allocFilters (filt, begp, endp, begc, endc)
    !
    ! !DESCRIPTION:
    ! Allocate one clumpfilter element.
    !
    ! Filter arrays are 1-indexed LISTS of subgrid indices, not arrays
    ! indexed by the subgrid index itself.  Always allocating from 1 means
    ! the caller loop  "do f=1,num_nolakec; c=nolakec(f)"  works correctly
    ! regardless of which clump index nc is stored inside the list.
    !
    ! !ARGUMENTS:
    type(clumpfilter), intent(inout) :: filt
    integer, intent(in) :: begp, endp            ! Patch indices
    integer, intent(in) :: begc, endc            ! Column indices
    !---------------------------------------------------------------------

    allocate (filt%exposedvegp  (1:(endp-begp+1)))
    allocate (filt%nolakeurbanp (1:(endp-begp+1)))
    allocate (filt%nolakec      (1:(endc-begc+1)))
    allocate (filt%nourbanc     (1:(endc-begc+1)))
    allocate (filt%hydrologyc   (1:(endc-begc+1)))

  end subroutine allocFilters

  !-----------------------------------------------------------------------
  subroutine setFilters (filt, begp, begc)
    !
    ! !DESCRIPTION:
    ! Set CLM filters for one clump.
    !
    ! begp / begc are the actual patch and column indices for this clump
    ! (e.g. nc=2 -> begp=2, begc=2).  We store those values at list
    ! position 1 so the standard "c = nolakec(f)" loop retrieves them.
    !
    ! !ARGUMENTS:
    type(clumpfilter), intent(inout) :: filt
    integer,           intent(in)    :: begp   ! first patch index for this clump
    integer,           intent(in)    :: begc   ! first column index for this clump
    !---------------------------------------------------------------------

    filt%num_nolakeurbanp = 1 ; filt%nolakeurbanp(1) = begp
    filt%num_nolakec      = 1 ; filt%nolakec(1)      = begc
    filt%num_nourbanc     = 1 ; filt%nourbanc(1)      = begc
    filt%num_hydrologyc   = 1 ; filt%hydrologyc(1)    = begc

  end subroutine setFilters

  !-----------------------------------------------------------------------
  subroutine setExposedvegpFilter (filter, frac_veg_nosno)
    !
    ! !DESCRIPTION:
    ! Set the exposedvegp patch filter. This filter includes patches for
    ! which frac_veg_nosno > 0. It does not include urban or lake points.
    !
    ! !ARGUMENTS:
    type(clumpfilter), intent(inout) :: filter
    integer, intent(in) :: frac_veg_nosno(:)   ! Fraction of vegetation not covered by snow
    !
    ! !LOCAL VARIABLES:
    integer :: fp       ! Filter index
    integer :: p        ! Patch index
    integer :: fe       ! Filter count
    !---------------------------------------------------------------------

    fe = 0
    do fp = 1, filter%num_nolakeurbanp
       p = filter%nolakeurbanp(fp)
       if (frac_veg_nosno(p) > 0) then
          fe = fe + 1
          filter%exposedvegp(fe) = p
       end if
    end do
    filter%num_exposedvegp = fe

  end subroutine setExposedvegpFilter

end module filterMod
