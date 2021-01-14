	ldr x24, [x4,x23]
	ldr x13, [x8, #167]
	cmp x4, x13
	b.eq #0xC
	ldr x21, [x24, #206]
	b #0x8
	ldr x13, [x11, #8]
