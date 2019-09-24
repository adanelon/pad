CC=gcc
CFLAGS= -Wall -pthread -o

all: calcPi calcPi_pthreads_2 calcPi_pthreads_4 calcPi_pthreads_8

calcPi:
		$(CC) calcPi.c $(CFLAGS) calcPi.o

calcPi_pthreads_2:
		$(CC) calcPi_pthreads_2.c $(CFLAGS) calcPi_pthreads_2.o

calcPi_pthreads_4:
		$(CC) calcPi_pthreads_4.c $(CFLAGS) calcPi_pthreads_4.o

calcPi_pthreads_8:
		$(CC) calcPi_pthreads_8.c $(CFLAGS) calcPi_pthreads_8.o