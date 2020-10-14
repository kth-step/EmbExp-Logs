	ldr x9, [x11,x7]
	ldr x23, [x16, #0]
	cmp x11, x23
	b.eq #0xC
	ldr x4, [x9, #48]
	b #0x8
	ldr x25, [x3, #16]
