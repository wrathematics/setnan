# NaN in Fortran

Setting a double to NaN in Fortran by calling C.

```
$ make
gfortran -c main.f90
gcc -c x.c -std=c99
gfortran -o nan main.o x.o
$ ./nan
                       NaN
```

```
$ make nan_withieee
gfortran -c main_withieee.f90
gfortran -o nan_withieee main_withieee.o x.o
$ ./nan_withieee 
                       NaN
 X is definitely NaN
```
