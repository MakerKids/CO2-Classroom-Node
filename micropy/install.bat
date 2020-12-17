set /p COMPORT=which port is your ESP32? [eg. COM7]:

python3 ./esptool/esptool.py --chip esp32 --port %COMPORT% erase_flash

python3 ./esptool/esptool.py --chip esp32 --port %COMPORT% --baud 460800 write_flash -z 0x1000 esp32-idf3-*.bin

echo "install success"

exit 0
