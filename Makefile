default: all

help:
	@echo "FASM Project Template"
	@echo
	@echo "Target rules:"
	@echo "    all      - Compiles and generates binary file"
	@echo "    clean    - Clean the project by removing binaries"
	@echo "    help     - Prints a help message with target rules"

all:
	#fasm helloworld.s helloworld
	fasm
	./helloworld

clean:
	@rm -rvf helloworld *.o
