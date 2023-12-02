CFLAGS=-std=c11 -g -fno-common
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

funnycc: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

$(OBJS): funnycc.h

test: funnycc
	./test.sh

clean:
	rm -f funnycc *.o *~ tmp*

.PHONY: test clean