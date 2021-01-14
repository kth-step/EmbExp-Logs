	ldr x5, [x23,x26]
	ldr x2, [x26, #45]
	cmp x23, x2
	b.eq #0xC
	ldr x7, [x5, #15]
	b #0x8
	ldr x0, [x13, #16]
