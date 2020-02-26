CC ?= cc
STND ?= -ansi -pedantic
CFLAGS += $(STND) -O2 -Wall -Werror -Wextra

all: ccbasic

ccbasic_deps = src/ccbasic.o
ccbasic: $(ccbasic_deps)
	./mvobjs.sh
	$(CC) -o ccbasic $(ccbasic_deps)

clean:
	rm -f ccbasic src/*.o

.PHONY: clean all
