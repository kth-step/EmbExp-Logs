	ldr x9, [x24,x1]
	ldr x24, [x17, #0]
	cmp x24, x24
	b.eq #0xC
	ldr x18, [x9, #14]
	b #0x8
	ldr x1, [x9, #8]
