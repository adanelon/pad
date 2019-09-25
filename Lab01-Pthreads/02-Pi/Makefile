CC=gcc
CFLAGS= -Wall -o

all: calcPi calcPi_pthreads_2 calcPi_pthreads_4 calcPi_pthreads_8

calcPi:
		$(CC) src/calcPi.c $(CFLAGS) bin/calcPi

calcPi_pthreads_2:
		$(CC) src/calcPi_pthreads_2.c -pthread $(CFLAGS) bin/calcPi_pthreads_2

calcPi_pthreads_4:
		$(CC) src/calcPi_pthreads_4.c -pthread $(CFLAGS) bin/calcPi_pthreads_4

calcPi_pthreads_8:
		$(CC) src/calcPi_pthreads_8.c -pthread $(CFLAGS) bin/calcPi_pthreads_8


