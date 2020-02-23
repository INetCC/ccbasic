CC ?= cc
STND ?= -ansi -pedantic
CFLAGS += $(STND) -Wall -Werror -Wextra

all: ccbasic

ccbasic_deps = src/ccbasic.o
ccbasic: $(ccbasic_deps)
	./mvobjs.sh
	$(CC) -o ccbasic $(ccbasic_deps)

clean:
	rm -f ccbasic src/*.o

.PHONY: clean all
