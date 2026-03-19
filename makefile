CC      = gcc
CFLAGS  = -O2 -Wall -Wextra -std=c90 -pedantic -Iinclude

SRC_DIR = src
BUILD   = build
TARGET  = typie

SRC = $(wildcard $(SRC_DIR)/*.c)
OBJ = $(patsubst $(SRC_DIR)/%.c,$(BUILD)/%.o,$(SRC))

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $^ -o $@

$(BUILD)/%.o: $(SRC_DIR)/%.c
	mkdir -p $(BUILD)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(BUILD) $(TARGET)

re: clean all

.PHONY: all clean re	mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@
