	ldr x2, [x17,x3]
	ldr x13, [x7, #0]
	cmp x17, x13
	b.eq #0xC
	ldr x23, [x2, #79]
	b #0x8
	ldr x13, [x12]
