	ldr x6, [x23,x0]
	ldr x29, [x13, #0]
	cmp x23, x29
	b.eq #0xC
	ldr x16, [x6, #53]
	b #0x8
	ldr x2, [x26, #4]
