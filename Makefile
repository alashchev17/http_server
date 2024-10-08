CC=gcc
CFLAGS=-Wall -std=c99
LDFLAGS=-lws2_32

FILES=main.c extclib/extclib.o

.PHONY: default build run
default: build run

build: ${FILES}
	${CC} ${CFLAGS} ${FILES} ${LDFLAGS} -o main 
run: main
	./main