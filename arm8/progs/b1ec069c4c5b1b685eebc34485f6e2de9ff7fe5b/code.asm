	ldr x4, [x21,x5]
	ldr x26, [x15, #0]
	cmp x21, x26
	b.eq #0xC
	ldr x29, [x4, #184]
	b #0x8
	ldr x21, [x11, #8]
