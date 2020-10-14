	ldr x5, [x26,x9]
	ldr x9, [x2, #0]
	cmp x26, x9
	b.eq #0xC
	ldr x2, [x5, #8]
	b #0x8
	ldr x4, [x9, #4]
