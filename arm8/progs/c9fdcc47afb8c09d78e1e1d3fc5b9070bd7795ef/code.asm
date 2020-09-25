	ldr x27, [x2,x3]
	ldr x7, [x23, #0]
	cmp x2, x7
	b.eq #0xC
	ldr x13, [x27, #47]
	b #0x8
	ldr x8, [x4, #8]
