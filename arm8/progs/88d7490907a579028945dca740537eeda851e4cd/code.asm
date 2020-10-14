	ldr x23, [x3,x15]
	ldr x24, [x4, #0]
	cmp x3, x24
	b.eq #0xC
	ldr x1, [x23, #209]
	b #0x8
	ldr x13, [x11, #8]
