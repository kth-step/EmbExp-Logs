	ldr x15, [x26,x5]
	ldr x7, [x5, #0]
	cmp x26, x7
	b.eq #0xC
	ldr x11, [x15, #63]
	b #0x8
	ldr x14, [x29, #8]
