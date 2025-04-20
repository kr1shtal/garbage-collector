CC = clang 

CFLAGS = -Wall -Wextra -Wpedantic -g -std=c11
LDFLAGS = -lm

TARGET = main

SRC_DIR = src/
BIN_DIR = bin/
OUT_DIR = out/

SOURCES = $(wildcard $(SRC_DIR)*.c)
HEADERS = $(wildcard $(SRC_DIR)*.h)

all: build

make_dir:
	mkdir $(BIN_DIR)

build: make_dir
	$(CC) $(CFLAGS) $(LDFLAGS) $(SOURCES) $(HEADERS) -o $(BIN_DIR)$(TARGET)
	
clean:
	rm -r $(BIN_DIR)
