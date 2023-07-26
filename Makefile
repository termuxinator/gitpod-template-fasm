default: all

help:
	@echo "FASM Project Template"
	@echo
	@echo "Target rules:"
	@echo "    all      - Compiles and generates binary file"
	@echo "    clean    - Clean the project by removing binaries"
	@echo "    help     - Prints a help message with target rules"

all:
	export PATH := /bin:$(PATH)
	fasm hello.s hello.o
	ld hello.o -o hello
	./hello

clean:
	@rm -rvf hello *.o
