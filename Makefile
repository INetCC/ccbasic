CC=c99
OBJS=src/ccbasic.o

all: ccbasic

ccbasic: $(OBJS)
	$(CC) -o ccbasic $(OBJS)
