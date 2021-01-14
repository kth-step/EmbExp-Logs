	ldr x20, [x25,x8]
	ldr x2, [x11, #132]
	cmp x25, x2
	b.eq #0xC
	ldr x15, [x20, #48]
	b #0x8
	ldr x3, [x5, #16]
