#define EMPTY_STRUCT_DECLARATION
#define VV_LOCAL_SYMBOL
#define voidptr void*
#define array
#define _vcleanup  main__v_cleanup
#define _vinit     main__v_init
#define byte uint8_t

#include <stdio.h>
#include <avr/io.h>
#include <util/delay.h>

fn C.printf(&char, ...voidptr) int

[markused]
fn v_init(argc int, argv &&char) {
	C.printf(c'v_init start\n')
	C.printf(c'  argc: %d\n', argc)
	C.printf(c'  argv: %p\n', argv)
	C.printf(c'  argv[0]: %s\n', unsafe { argv[0] })
	C.printf(c'--------------------------------------\n')
}

[markused]
fn v_cleanup() {
	C.printf(c'--------------------------------------\n')
	C.printf(c'v_cleanup done\n')
}

// blinking on the arduino example

fn main() {
	unsafe {
		// set PORTB5 as an output
		C.DDRB = C.DDRB | (1 << C.DDB5)
		for {
			// set PORTB5
			C.PORTB = C.PORTB | (1 << C.PORTB5)

			// wait
			C._delay_ms(1000)

			// unset PORTB5
			C.PORTB = C.PORTB & ~(1 << C.PORTB5)

			// wait somemore
			C._delay_ms(1000)
		}
	}
}
