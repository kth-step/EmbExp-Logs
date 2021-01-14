	ldr x24, [x13,x12]
	ldr x0, [x13, #35]
	cmp x13, x0
	b.eq #0xC
	ldr x9, [x24, #184]
	b #0x8
	ldr x11, [x6, #4]
