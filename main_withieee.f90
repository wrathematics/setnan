program main
  use ieee_arithmetic
  external set_nan
  double precision x
  call set_nan(x)
  
  print *, x
  if (x == x) then
    write (*,*) "won't print because x is now NaN"
  end if
  
  if (ieee_is_nan(x)) then
    print *, "X is definitely NaN"
  end if
end program
