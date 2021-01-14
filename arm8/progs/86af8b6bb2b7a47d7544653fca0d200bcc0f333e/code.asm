	ldr x7, [x3,x29]
	ldr x13, [x10, #149]
	cmp x3, x13
	b.eq #0xC
	ldr x29, [x7, #13]
	b #0x8
	ldr x29, [x10, #16]
