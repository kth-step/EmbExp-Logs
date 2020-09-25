	ldr x17, [x3,x11]
	ldr x15, [x9, #0]
	cmp x3, x15
	b.eq #0xC
	ldr x21, [x17, #32]
	b #0x8
	ldr x4, [x9, #8]
