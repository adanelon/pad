CC=mpicc
CFLAGS= -Wall -o
LIBS=src/matrix.c

all: sequential mpi

sequential:
		gcc src/sequential.c $(CFLAGS) bin/seq $(LIBS) 

mpi:
		$(CC) src/mpi.c $(CFLAGS) bin/mpi $(LIBS) 