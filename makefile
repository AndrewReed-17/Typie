CC      = gcc
CFLAGS  = -O2 -Wall -Wextra -std=c90 -pedantic

all : main

main: main.o
	$(CC) $(CFLAGS) main.o -o main

main.o: main.c
	$(CC) $(CFLAGS) -c main.c
	yes | rm -i main main.o

clean:
	yes | rm -i main.o main
