	ldr x13, [x5,x6]
	ldr x7, [x10, #0]
	cmp x5, x7
	b.eq #0xC
	ldr x23, [x13, #28]
	b #0x8
	ldr x20, [x20]
