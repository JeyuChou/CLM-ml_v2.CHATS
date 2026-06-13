module abortutils

  !-----------------------------------------------------------------------
  ! !DESCRIPTION:
  ! Module to abort the model for abnormal termination
  !
  ! !USES:
  use shr_kind_mod, only : r8 => shr_kind_r8
  use clm_varctl, only : iulog
  !
  ! !PUBLIC TYPES:
  implicit none
  include 'netcdf.inc'
  private
  !
  ! !PUBLIC MEMBER FUNCTIONS:
  public :: endrun
  public :: handle_err
  public :: reset_tower_error

  ! Error state for per-tower error recovery (set by endrun/handle_err, checked by caller)
  logical,           public, save :: tower_error_flag = .false.
  character(len=512),public, save :: tower_error_msg  = ''
  !$OMP THREADPRIVATE(tower_error_flag, tower_error_msg)

contains

  subroutine endrun (msg)
    implicit none
    character(len=*), intent(in), optional :: msg    ! string to be printed

    if (present (msg)) then
       write (iulog,*) 'ENDRUN: ', msg
       tower_error_msg = msg
    else
       write (iulog,*) 'ENDRUN: called without a message string'
       tower_error_msg = 'called without a message string'
    end if

    tower_error_flag = .true.

  end subroutine endrun

  subroutine handle_err (status, errmsg)
    integer, intent(in) :: status
    character(len=*), intent(in)    :: errmsg  ! append error message

    if (status /= nf_noerr) then
       print *, trim(nf_strerror(status)), ": ", errmsg
       write (iulog,*) 'handle_err: ', trim(nf_strerror(status)), ": ", errmsg
       tower_error_msg = trim(nf_strerror(status)) // ": " // errmsg
       tower_error_flag = .true.
    endif
  end subroutine handle_err

  subroutine reset_tower_error ()
    tower_error_flag = .false.
    tower_error_msg  = ''
  end subroutine reset_tower_error

end module abortutils
