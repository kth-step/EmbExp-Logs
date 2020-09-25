	ldr x3, [x28,x12]
	ldr x6, [x28, #0]
	cmp x28, x6
	b.eq #0xC
	ldr x10, [x3, #117]
	b #0x8
	ldr x13, [x20, #4]
