	ldr x6, [x26,x7]
	ldr x13, [x2, #0]
	cmp x26, x13
	b.eq #0xC
	ldr x25, [x6, #116]
	b #0x8
	ldr x21, [x14, #4]
