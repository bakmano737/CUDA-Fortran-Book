! 
!     Copyright (c) 2017, NVIDIA CORPORATION.  All rights reserved.
!
! NVIDIA CORPORATION and its licensors retain all intellectual property
! and proprietary rights in and to this software, related documentation
! and any modifications thereto.
!
!
!    These example codes are a portion of the code samples from the companion
!    website to the book "CUDA Fortran for Scientists and Engineers":
!
! http://store.elsevier.com/product.jsp?isbn=9780124169708
!

module timing
  interface wallclock
     function wallclock() result(res) bind(C, name='wallclock')
       use iso_c_binding
       real (c_double) :: res
     end function wallclock
  end interface wallclock
end module timing

