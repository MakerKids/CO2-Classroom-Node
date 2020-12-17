#!/bin/bash

# Install Micropython to ESP32

echo "which /dev/tty is your esp32? [eg. /dev/ttyUSB0]:"
read ttyvar

python3 ./esptool/esptool.py --chip esp32 --port $ttyvar erase_flash

python3 ./esptool/esptool.py --chip esp32 --port $ttyvar --baud 460800 write_flash -z 0x1000 esp32-idf3-*.bin

echo "install success"

exit 0

