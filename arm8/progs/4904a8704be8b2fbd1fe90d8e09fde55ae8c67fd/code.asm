	ldr x5, [x7,x10]
	ldr x23, [x5, #194]
	cmp x7, x23
	b.eq #0xC
	ldr x13, [x5, #7]
	b #0x8
	ldr x0, [x15]
