	ldr x23, [x13,x6]
	ldr x4, [x8, #0]
	cmp x13, x4
	b.eq #0xC
	ldr x21, [x23, #76]
	b #0x8
	ldr x21, [x1, #8]
