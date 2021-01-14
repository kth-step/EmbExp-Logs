	ldr x14, [x2,x29]
	ldr x20, [x13, #149]
	cmp x2, x20
	b.eq #0xC
	ldr x3, [x14, #227]
	b #0x8
	ldr x15, [x20, #16]
