	ldr x8, [x2,x2]
	ldr x16, [x6, #63]
	cmp x2, x16
	b.eq #0xC
	ldr x3, [x8, #53]
	b #0x8
	ldr x11, [x12, #4]
