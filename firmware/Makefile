CC = arm-none-eabi-gcc

# Cortex-M4 is used as a generic placeholder; adjust later for your specific STM32
CFLAGS = -mcpu=cortex-m4 -mthumb -O0 -Wall --specs=nosys.specs

BUILD_DIR = build
TARGET = $(BUILD_DIR)/dummy_firmware.elf

all: $(BUILD_DIR) $(TARGET)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(TARGET): main.c
	$(CC) $(CFLAGS) main.c -o $(TARGET)

clean:
	rm -rf $(BUILD_DIR)
