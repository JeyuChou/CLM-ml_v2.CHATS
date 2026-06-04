program CLMml

  use shr_kind_mod,  only : r8 => shr_kind_r8
  use decompMod,     only : bounds_type, numg, decompInit, get_clump_bounds, get_proc_bounds
  use CLMml_driver,  only : CLMml_global_init, CLMml_run_clump

  implicit none

  integer :: nc
  type(bounds_type) :: bounds, bounds_proc
  integer           :: ntim
  real(r8)          :: start_calday_clm
  integer           :: yr, mon
  character(len=256) :: fin_tower, fin_clm, fin_soil_adjust, dirout

  ! Initialize decomposition.
  ! Change the argument to run N grid cells in parallel (e.g., decompInit(4)).
  ! With numg=1 the parallel loop below runs once, identical to prior behavior.

  call decompInit (1)
  call get_proc_bounds (bounds_proc)

  ! --- Serial global initialization ---
  ! Reads namelist, builds CLM data structures for all clumps, computes
  ! orbital params, and derives the CLM history-file calendar offset.

  call CLMml_global_init (bounds_proc, ntim, fin_tower, fin_clm, fin_soil_adjust, &
                           dirout, start_calday_clm, yr, mon)

  ! --- Parallel per-clump simulation ---
  ! Each thread owns one clump (one grid cell).  bounds is PRIVATE because
  ! each thread needs its own [n:n] index struct.  All state arrays are
  ! allocated for [1:numg] and each thread writes only its own slice, so
  ! no locking is needed.

  !$OMP PARALLEL DO PRIVATE(nc, bounds)
  do nc = 1, numg
     call get_clump_bounds (nc, bounds)
     call CLMml_run_clump (bounds, nc, ntim, fin_tower, fin_clm, fin_soil_adjust, &
                            dirout, start_calday_clm, yr, mon)
  end do
  !$OMP END PARALLEL DO

end program CLMml
