
CC = gcc
CFLAGS = -Wall -g
BIN_DIR = bin

# 1. Find all .c files recursively (even in subfolders)
SRCS = $(shell find . -name "*.c" -not -path "./$(BIN_DIR)/*")

# 2. Map source paths to binary paths (e.g., ./subdir/main.c -> bin/subdir/main)
BINS = $(patsubst ./%.c, $(BIN_DIR)/%, $(SRCS))

all: $(BINS)

# 3. Rule to compile each file
$(BIN_DIR)/%: %.c
	@# Create the specific subdirectory for this binary if it's missing
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf $(BIN_DIR)

.PHONY: all clean

