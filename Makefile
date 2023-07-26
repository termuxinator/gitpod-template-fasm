default: all

help:
	@echo "FASM Project Template"
	@echo
	@echo "Target rules:"
	@echo "    all      - Compiles and generates binary file"
	@echo "    clean    - Clean the project by removing binaries"
	@echo "    help     - Prints a help message with target rules"

all:
	fasm hello32.s hello32
	./hello32

clean:
	@rm -rvf hello32 *.o
