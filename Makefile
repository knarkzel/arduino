default:
	avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o main.o main.c
	avr-gcc -o main.bin main.o
	avr-objcopy -O ihex -R .eeprom main.bin main.hex
	ls -l main*

flash: default
	sudo avrdude -v -F -V -c arduino -p atmega328p -P /dev/ttyACM0 -b 115200 -U flash:w:main.hex
