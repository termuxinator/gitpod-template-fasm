default: all

help:
	@echo "FASM Project Template"
	@echo
	@echo "Target rules:"
	@echo "    all      - Compiles and generates binary file"
	@echo "    clean    - Clean the project by removing binaries"
	@echo "    help     - Prints a help message with target rules"

all:
	fasm hello.s hello.o
	ld -o hello hello.o
	./hello

clean:
	@rm -rvf hello *.o
