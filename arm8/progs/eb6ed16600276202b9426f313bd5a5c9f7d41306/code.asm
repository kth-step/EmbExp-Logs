	ldr x4, [x13,x14]
	ldr x3, [x15, #0]
	cmp x13, x3
	b.eq #0xC
	ldr x16, [x4, #149]
	b #0x8
	ldr x2, [x7, #8]
