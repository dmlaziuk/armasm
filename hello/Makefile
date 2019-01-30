all: hello hello_c hello_s

hello: hello.o
	gcc $< -o $@

hello_c: hello_c.o
	gcc $< -o $@

hello_s: hello_s.o
	gcc $< -o $@

.s.o:
	as $< -o $@

clean:
	rm -vf *.o hello hello_c hello_s
