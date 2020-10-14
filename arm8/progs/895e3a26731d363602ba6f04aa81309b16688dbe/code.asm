	ldr x21, [x16,x13]
	ldr x7, [x5, #0]
	cmp x16, x7
	b.eq #0xC
	ldr x29, [x21, #85]
	b #0x8
	ldr x11, [x25]
