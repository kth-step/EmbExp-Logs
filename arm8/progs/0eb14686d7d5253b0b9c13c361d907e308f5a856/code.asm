	ldr x23, [x29,x15]
	ldr x21, [x5, #0]
	cmp x29, x21
	b.eq #0xC
	ldr x5, [x23, #184]
	b #0x8
	ldr x11, [x2, #8]
