	ldr x3, [x29,x0]
	ldr x8, [x12, #228]
	cmp x29, x8
	b.eq #0xC
	ldr x2, [x3, #149]
	b #0x8
	ldr x5, [x29, #16]
