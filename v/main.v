#define EMPTY_STRUCT_DECLARATION
#define VV_LOCAL_SYMBOL
#define voidptr void*
#define array
#define _vcleanup  main__v_cleanup
#define _vinit     main__v_init

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

fn abc(x int, y int) int {
	return x + y
}

fn main() {
	C.printf(c'abc(): %d\n', abc(2, 3))
}
