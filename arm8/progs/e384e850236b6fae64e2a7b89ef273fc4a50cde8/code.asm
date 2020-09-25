	ldr x20, [x5,x28]
	ldr x28, [x26, #0]
	cmp x5, x28
	b.eq #0xC
	ldr x29, [x20, #117]
	b #0x8
	ldr x28, [x7, #8]
