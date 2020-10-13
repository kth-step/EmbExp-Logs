	ldr x8, [x24,x21]
	ldr x17, [x7, #0]
	cmp x24, x17
	b.eq #0xC
	ldr x5, [x8, #137]
	b #0x8
	ldr x11, [x1]
