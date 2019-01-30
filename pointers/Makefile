all: pointers

pointers: pointers.o
	gcc $< -o $@

.s.o:
	as $< -o $@

clean:
	rm -vf *.o
