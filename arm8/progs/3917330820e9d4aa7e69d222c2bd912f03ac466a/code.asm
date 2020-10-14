	ldr x21, [x15,x8]
	ldr x29, [x0, #0]
	cmp x15, x29
	b.eq #0xC
	ldr x28, [x21, #216]
	b #0x8
	ldr x25, [x13, #8]
