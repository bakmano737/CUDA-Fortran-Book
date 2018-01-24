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

program test_accuracy
  real :: x, y, dist
  double precision:: x_dp, y_dp, dist_dp
  
  x=Z'3F1DC57A'
  y=Z'3F499AA3'
  dist= x**2 +y**2

  x_dp=real(x,8)
  y_dp=real(y,8)
  dist_dp= x_dp**2 +y_dp**2

  print *, 'Result with operands in single precision:'
  print '((2x,z8)) ', dist

  print *, 'Result in double precision with operands'
  print *, 'promoted to double precision:'
  print '((2x,z16))', dist_dp

  print *, 'Result in single precision with operands'
  print *, 'promoted to double precision:'
  print '((2x,z8))', real(dist_dp,4)

end program test_accuracy
