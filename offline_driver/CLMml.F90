program CLMml

  use decompMod, only : bounds_type, get_clump_bounds, decompInit, nclumps
  use CLMml_driver, only : CLMml_drv
  implicit none
  integer :: nc, itow

  type(bounds_type) :: bounds

  ! Define grid cell (g), land unit (l), column (c), and patch (p) bounds
  ! for CLM g/l/c/p hierarchy. CLM processes clumps of gridcells and
  ! associated subgrid-scale entities, each with length defined by
  ! begg/endg, begl/endl, begc/endc, and begp/endp. This code assumes
  ! that a grid cell has one land unit with one column and one patch. It
  ! processes a single grid cell.

  call decompInit()

  do itow = 1, 1              ! Tower loop: placeholder; bump to ntower in Commit 3
    !$OMP PARALLEL DO PRIVATE(bounds, nc) SCHEDULE(DYNAMIC)
    do nc = 1, nclumps
        call get_clump_bounds (nc, bounds)
        call CLMml_drv (bounds)
    end do
    !$OMP END PARALLEL DO
  end do

end program CLMml
