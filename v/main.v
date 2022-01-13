// boilerplate
#define array
#define voidptr void*
#define VV_LOCAL_SYMBOL
#define EMPTY_STRUCT_DECLARATION
#define _vcleanup  main__v_cleanup
#define _vinit     main__v_init

[markused]
fn v_init(argc int, argv &&char) {
}

[markused]
fn v_cleanup() {
}

// blinking on the arduino example

#include <avr/io.h>
#include <util/delay.h>

fn main() {
	unsafe {
		// set PORTB5 as an output
		C.DDRB = C.DDRB | (1 << C.DDB5)
		for {
			// set PORTB5
			C.PORTB = C.PORTB | (1 << C.PORTB5)

			// wait
			// C._delay_ms(1000)

			// unset PORTB5
			C.PORTB = C.PORTB & ~(1 << C.PORTB5)

			// wait somemore
			// C._delay_ms(1000)
		}
	}
}
