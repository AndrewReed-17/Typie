CC      = gcc
CFLAGS  = -O2 -Wall -Wextra -std=c90 -pedantic

SRC_DIR = source
BUILD   = build

TARGET  = main
SRC     = $(SRC_DIR)/main.c
OBJ     = $(BUILD)/main.o

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(TARGET)

$(OBJ): $(SRC)
	mkdir -p $(BUILD)
	$(CC) $(CFLAGS) -c $(SRC) -o $(OBJ)

clean:
	rm -f $(OBJ) $(TARGET)CC      = gcc
CFLAGS  = -O2 -Wall -Wextra -std=c90 -pedantic

SRC_DIR = source
BUILD   = build

TARGET  = main
SRC     = $(SRC_DIR)/main.c
OBJ     = $(BUILD)/main.o

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(TARGET)

$(OBJ): $(SRC)
	mkdir -p $(BUILD)
	$(CC) $(CFLAGS) -c $(SRC) -o $(OBJ)

clean:
	rm -f $(OBJ) $(TARGET)
