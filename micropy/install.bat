set /p COMPORT=which port is your ESP32? [eg. COM7]:

python3 ./esptool-3.0/esptool.py --chip esp32 --port %COMPORT% erase_flash

python3 ./esptool-3.0/esptool.py --chip esp32 --port %COMPORT% --baud 460800 write_flash -z 0x1000 esp32-idf3-20200902-v1.13.bin

echo "install success"

exit 0
