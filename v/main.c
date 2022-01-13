
#ifndef V_COMMIT_HASH
	#define V_COMMIT_HASH "4d4398f"
#endif

#ifndef V_CURRENT_COMMIT_HASH
	#define V_CURRENT_COMMIT_HASH "c97f0c5"
#endif

// V comptime_definitions:

// V typedefs:
typedef struct none none;

// BEGIN_multi_return_typedefs
// END_multi_return_typedefs


// V cheaders:

// V includes:
// defined by module `main`
#define EMPTY_STRUCT_DECLARATION
// defined by module `main`
#define VV_LOCAL_SYMBOL
// defined by module `main`
#define voidptr void*
// defined by module `main`
#define array
// defined by module `main`
#define _vcleanup  main__v_cleanup
// defined by module `main`
#define _vinit     main__v_init
// defined by module `main`
#define byte uint8_t


// added by module `main`

#if defined(__has_include)

#if __has_include(<stdio.h>)
#include <stdio.h>
#else
#error VERROR_MESSAGE Header file <stdio.h>, needed for module `main` was not found. Please install the corresponding development headers.
#endif

#else
#include <stdio.h>
#endif





// added by module `main`

#if defined(__has_include)

#if __has_include(<avr/io.h>)
#include <avr/io.h>
#else
#error VERROR_MESSAGE Header file <avr/io.h>, needed for module `main` was not found. Please install the corresponding development headers.
#endif

#else
#include <avr/io.h>
#endif





// added by module `main`

#if defined(__has_include)

#if __has_include(<util/delay.h>)
#include <util/delay.h>
#else
#error VERROR_MESSAGE Header file <util/delay.h>, needed for module `main` was not found. Please install the corresponding development headers.
#endif

#else
#include <util/delay.h>
#endif




// Enum definitions:

// V type definitions:
typedef array Array_voidptr;
// builtin types:
//------------------ #endbuiltin
struct none {
	EMPTY_STRUCT_DECLARATION;
};

// BEGIN_multi_return_structs
// END_multi_return_structs


// V shared types:

// V Option_xxx definitions:

// V json forward decls:

// V definitions:
// end of definitions #endif
VV_LOCAL_SYMBOL void main__v_init(int argc, char** argv);
VV_LOCAL_SYMBOL void main__v_cleanup(void);
VV_LOCAL_SYMBOL void main__main(void);


// V interface table:


// V out

// >> typeof() support for sum types / interfaces
// << typeof() support for sum types

VV_LOCAL_SYMBOL void main__v_init(int argc, char** argv) {
	printf("v_init start\n");
	printf("  argc: %d\n", argc);
	printf("  argv: %p\n", argv);
	printf("  argv[0]: %s\n", argv[0]);
	printf("--------------------------------------\n");
}
VV_LOCAL_SYMBOL void main__v_cleanup(void) {
	printf("--------------------------------------\n");
	printf("v_cleanup done\n");
}
VV_LOCAL_SYMBOL void main__main(void) {
	{ // Unsafe block
		DDRB = (DDRB | (1 << DDB5));
		for (;;) {
			PORTB = (PORTB | (1 << PORTB5));
			PORTB = (PORTB & ~(1 << PORTB5));
		}
	}
}

int main(int ___argc, char** ___argv){
	_vinit(___argc, (voidptr)___argv);
	main__main();
	_vcleanup();
	return 0;
}

// THE END.
