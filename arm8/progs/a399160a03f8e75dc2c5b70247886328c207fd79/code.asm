	ldr x13, [x17,x23]
	ldr x29, [x21, #0]
	cmp x17, x29
	b.eq #0xC
	ldr x1, [x13, #155]
	b #0x8
	ldr x16, [x9, #16]
