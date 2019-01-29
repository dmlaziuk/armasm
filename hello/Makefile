all: hello

hello: hello.o
	gcc $< -o $@

.s.o:
	as $< -o $@

clean:
	rm -vf *.o
