default: all

# Help message
help:
	@echo "FASM Project Template"
	@echo
	@echo "Target rules:"
	@echo "    all      - Compiles and generates binary file"
	@echo "    clean    - Clean the project by removing binaries"
	@echo "    help     - Prints a help message with target rules"

all:
	chmod +x ./fasm.x64
	./fasm.x64 helloworld.s helloworld
	# fasm helloworld.s helloworld

	./helloworld

# Rule for cleaning the project
clean:
	@rm -rvf helloworld *.o
