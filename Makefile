//Makefile
CC=gcc
DEFINES=-DMALLOC_DEBUG -DMALLOC_DETECT_DOUBLE_FREE
CFLAGS=-g -Wall
LDFLAGS=-ldl -L. -lmymalloc -Wl,-rpath,.

driver: driver.o malloc.so
	$(CC) $(CFLAGS) -o driver driver.o $(LDFLAGS)

driver.o: driver.c
	$(CC) $(CFLAGS) $(DEFINES) -c driver.c

malloc.so: malloc.c malloc.h list.h
	$(CC) -fPIC -shared $(CFLAGS) $(DEFINES) -o libmymalloc.so malloc.c 

clean:
	rm -f driver
	rm -f driver.o
	rm -f libmymalloc.so

