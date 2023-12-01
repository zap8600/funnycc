CFLAGS=-std=c11 -g -fno-common

funnycc: main.o
	$(CC) -o funnycc main.o $(LDFLAGS)

test: funnycc
	./test.sh

clean:
	rm -f funnycc *.o *~ tmp*

.PHONY: test clean