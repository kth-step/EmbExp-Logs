	ldr x16, [x17,x10]
	ldr x29, [x20, #0]
	cmp x17, x29
	b.eq #0xC
	ldr x11, [x16, #232]
	b #0x8
	ldr x24, [x13, #8]
