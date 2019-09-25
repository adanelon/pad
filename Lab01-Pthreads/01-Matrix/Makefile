CC=gcc
CFLAGS= -Wall -o
LIBS=src/matrix.c

all: sequential thread2 thread4 thread8

sequential:
		$(CC) src/sequential.c -pthread $(CFLAGS) bin/seq $(LIBS) 

thread2:
		$(CC) src/thread2.c -pthread $(CFLAGS) bin/thread2 $(LIBS) 

thread4:
		$(CC) src/thread4.c -pthread $(CFLAGS) bin/thread4 $(LIBS) 

thread8:
		$(CC) src/thread8.c -pthread $(CFLAGS) bin/thread8 $(LIBS) 
