	ldr x11, [x10,x9]
	ldr x21, [x2, #0]
	cmp x10, x21
	b.eq #0xC
	ldr x2, [x11, #8]
	b #0x8
	ldr x6, [x0, #8]
