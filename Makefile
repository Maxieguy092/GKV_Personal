# Compiler and linker
CC := g++
CFLAGS := -Wall -Iinclude -pipe -save-temps -B /tmp
LDFLAGS := -lfreeglut -lglu32 -lopengl32 -lgdi32

# Directories
SRC_DIR := .
BUILD_DIR := build

# Source files
SRCS := main2.cpp
OBJS := $(SRCS:%.cpp=$(BUILD_DIR)/%.o)
OBJS := $(OBJS:%.c=$(BUILD_DIR)/%.o)

# Output executable
TARGET := $(BUILD_DIR)/GKVP.exe

# Ensure build directory exists
$(shell mkdir -p $(BUILD_DIR))

# Build rules
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS)

$(BUILD_DIR)/%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD_DIR)/%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(BUILD_DIR)
