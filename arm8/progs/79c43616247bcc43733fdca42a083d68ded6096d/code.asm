	ldr x13, [x5,x11]
	ldr x7, [x10, #0]
	cmp x5, x7
	b.eq #0xC
	ldr x16, [x13, #198]
	b #0x8
	ldr x8, [x29, #8]
