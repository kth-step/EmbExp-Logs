	ldr x29, [x4,x14]
	ldr x6, [x16, #0]
	cmp x4, x6
	b.eq #0xC
	ldr x13, [x29, #63]
	b #0x8
	ldr x6, [x1, #8]
