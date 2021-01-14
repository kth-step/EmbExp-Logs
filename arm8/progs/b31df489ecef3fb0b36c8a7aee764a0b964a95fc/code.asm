	ldr x13, [x7,x3]
	ldr x8, [x5, #13]
	cmp x7, x8
	b.eq #0xC
	ldr x7, [x13, #227]
	b #0x8
	ldr x1, [x2]
