# Makefile

CC := gcc
CFLAGS := -Wall -Wextra -O2
SRCS := $(wildcard *.c)

TARGET := main

$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f main.exe main

run: $(TARGET)
	./$(TARGET)