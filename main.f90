program main
  external set_nan
  double precision x
  call set_nan(x)
  
  print *, x
  if (x == x) then
    write (*,*) "this won't print because x is now NaN"
  end if
end program
