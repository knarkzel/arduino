# arduino

This repository is boilerplate for anyone that wants to develop for the Arduino using C or V.

## Getting started

Make sure you have following installed: `make` `avr-gcc` `avr-libc` `avrdude`. Then run following:

```bash
git clone https://github.com/knarkzel/arduino
cd arduino/
```

For developing using C:
```bash
cd c/
make
```

For developing using V:
```bash
cd v/
make
```

For flashing, do following
```bash
make flash
```

## Links

Here are some useful links for developing on the Arduino using C or V:

- [Getting Started with Baremetal Arduino C Programming](https://www.youtube.com/watch?v=j4xw8QomkXs)
- [Flashing Arduino hex file in Linux with Avrdude](https://skjoldtech.wordpress.com/2019/05/10/flashing-arduino-hex-file-in-linux-with-avrdude/)
- [avr-libc documentation](http://www.nongnu.org/avr-libc/user-manual/)
- [Arduino RTC Library](https://github.com/feilipu/Arduino_RTC_Library)
