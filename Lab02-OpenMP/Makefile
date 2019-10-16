CC=gcc
CFLAGS= -Wall -o
LIBS=src/matrix.c

all: sequential omp_2 omp_4 omp_8 omp_16 omp_32

sequential:
		$(CC) src/sequential.c -fopenmp $(CFLAGS) bin/seq $(LIBS) 

omp_2:
		$(CC) src/omp_2.c -fopenmp $(CFLAGS) bin/omp_2 $(LIBS) 

omp_4:
		$(CC) src/omp_4.c -fopenmp $(CFLAGS) bin/omp_4 $(LIBS) 

omp_8:
		$(CC) src/omp_8.c -fopenmp $(CFLAGS) bin/omp_8 $(LIBS) 		

omp_16:
		$(CC) src/omp_16.c -fopenmp $(CFLAGS) bin/omp_16 $(LIBS) 

omp_32:
		$(CC) src/omp_32.c -fopenmp $(CFLAGS) bin/omp_32 $(LIBS) 