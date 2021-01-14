	ldr x5, [x26,x9]
	ldr x7, [x19, #228]
	cmp x26, x7
	b.eq #0xC
	ldr x16, [x5, #132]
	b #0x8
	ldr x12, [x15, #8]
