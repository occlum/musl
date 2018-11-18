occlum = yes

ifeq ($(occlum),yes)
CC := /usr/local/occlum/bin/musl-gcc
CFLAGS :=
LFLAGS :=
BUILD_DIR := build-occlum
else
CC := gcc
CFLAGS := -fpic -fno-builtin
LFLAGS := -pie -static-libgcc
BUILD_DIR := build-gcc
endif

BIN = $(BUILD_DIR)/main
BIN_OBJ = $(BUILD_DIR)/main.o
BIN_SRC = main.c

LIB_NAME = my_syscall
LIB_SO = $(BUILD_DIR)/libmy_syscall.so
LIB_SRC = my_syscall.c

all: $(BUILD_DIR) $(BIN)
	readelf -a $(BIN) > $(BUILD_DIR)/main.readelf
	objdump -d $(BIN) > $(BUILD_DIR)/main.objdump

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(BIN): $(BIN_OBJ) $(LIB_SO)
	$(CC) $(LFLAGS) -L $(BUILD_DIR) -l$(LIB_NAME) -o $@ $<

$(BIN_OBJ): $(BIN_SRC)
	$(CC) $(CFLAGS) -c -o $@ $<

$(LIB_SO): $(LIB_SRC)
	$(CC) $(CFLAGS) -shared -o $@ $<

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean $(BUILD_DIR)
