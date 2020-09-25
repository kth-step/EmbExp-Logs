	ldr x6, [x11,x3]
	ldr x25, [x27, #0]
	cmp x11, x25
	b.eq #0xC
	ldr x27, [x6, #228]
	b #0x8
	ldr x2, [x15, #8]
