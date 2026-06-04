module decompMod

  !-----------------------------------------------------------------------
  ! Decomposition of grid cells into clumps for OpenMP parallelism.
  !
  ! Design: 1 clump = 1 grid cell.  Each OpenMP thread owns one clump and
  ! works exclusively on indices [n:n] in every subgrid level (g, l, c, p).
  ! All state arrays are allocated once for [1:numg] before the parallel
  ! region; each thread writes only its own non-overlapping slice, so no
  ! locking is needed.
  !-----------------------------------------------------------------------

  use shr_kind_mod, only : r8 => shr_kind_r8
  implicit none

  integer, public :: numg    ! Total number of grid cells (= nclumps)
  integer, public :: nclumps ! Total number of clumps    (= numg)

  ! bounds_type carries the index range for one clump (or the whole proc).
  ! clump_index == -1 means proc-level (spans all clumps).
  type, public :: bounds_type
     integer :: begg, endg       ! Beginning and ending gridcell index
     integer :: begl, endl       ! Beginning and ending landunit index
     integer :: begc, endc       ! Beginning and ending column index
     integer :: begp, endp       ! Beginning and ending patch index
     integer :: clump_index      ! Which clump (-1 = proc-level)
  end type bounds_type

  public :: decompInit       ! Set numg/nclumps
  public :: get_clump_bounds ! Bounds for clump n : all levels map to [n:n]
  public :: get_proc_bounds  ! Bounds spanning all clumps : [1:numg]

contains

  subroutine decompInit(ng)
    !
    ! Call once before any parallel region to tell the model how many
    ! grid cells (clumps) to simulate.
    !
    integer, intent(in) :: ng
    numg    = ng
    nclumps = ng
  end subroutine decompInit

  subroutine get_clump_bounds(n, bounds)
    !
    ! Return bounds for clump n.  Because each clump is exactly one grid
    ! cell, every subgrid level (g, l, c, p) collapses to the same index n.
    !
    integer, intent(in)            :: n
    type(bounds_type), intent(out) :: bounds
    bounds%begg = n ; bounds%endg = n
    bounds%begl = n ; bounds%endl = n
    bounds%begc = n ; bounds%endc = n
    bounds%begp = n ; bounds%endp = n
    bounds%clump_index = n
  end subroutine get_clump_bounds

  subroutine get_proc_bounds(bounds)
    !
    ! Return processor-level bounds: the full [1:numg] range that covers
    ! every clump.  Used for one-time allocation of all state arrays.
    !
    type(bounds_type), intent(out) :: bounds
    bounds%begg = 1 ; bounds%endg = numg
    bounds%begl = 1 ; bounds%endl = numg
    bounds%begc = 1 ; bounds%endc = numg
    bounds%begp = 1 ; bounds%endp = numg
    bounds%clump_index = -1
  end subroutine get_proc_bounds

end module decompMod
