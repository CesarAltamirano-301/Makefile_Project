hello:
	@echo "Hello from the Makefile!"

CC = gcc        # Compiler
CFLAGS = -g     # Compiler flags for debugging

# Default target
all: main

# Rule to create the main executable
main: main.o
	$(CC) $(CFLAGS) main.o -o main

# Pattern rule to create .o files from .c files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean target to remove compiled files
.PHONY: clean
clean:
	rm -f *.o main

