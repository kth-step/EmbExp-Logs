	ldr x12, [x15,x18]
	ldr x9, [x17, #63]
	cmp x15, x9
	b.eq #0xC
	ldr x29, [x12, #45]
	b #0x8
	ldr x0, [x11, #8]
