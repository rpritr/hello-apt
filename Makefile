CC=g++
TARGET=hello-app
SRC=src/main.cpp
BUILD_DIR=build

all: build

build: clean
	mkdir -p $(BUILD_DIR)
	$(CC) $(SRC) -o $(BUILD_DIR)/$(TARGET)
install: build
	install -d /usr/local/bin
	install $(BUILD_DIR)/$(TARGET) /usr/local/bin/$(TARGET)
uninstall:
	rm -r /usr/local/bin/$(TARGET)
clean:
	rm -rf $(BUILD_DIR)
