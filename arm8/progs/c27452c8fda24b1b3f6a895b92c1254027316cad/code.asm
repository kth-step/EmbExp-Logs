	ldr x9, [x20,x3]
	ldr x15, [x21, #0]
	cmp x20, x15
	b.eq #0xC
	ldr x2, [x9, #141]
	b #0x8
	ldr x11, [x11]
