	ldr x21, [x5,x9]
	ldr x17, [x0, #0]
	cmp x5, x17
	b.eq #0xC
	ldr x11, [x21, #121]
	b #0x8
	ldr x27, [x19, #16]
