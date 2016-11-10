all: nan


# ignore these two if your compiler is old
nan_withieee: main_withieee set_nan
	gfortran -o nan_withieee main_withieee.o set_nan.o

main_withieee:
	gfortran -c main_withieee.f90



nan: main set_nan
	gfortran -o nan main.o set_nan.o

main:
	gfortran -c main.f90

set_nan: 
	gcc -c set_nan.c -std=c99

clean:
	rm -f *.o nan nan_withieee
