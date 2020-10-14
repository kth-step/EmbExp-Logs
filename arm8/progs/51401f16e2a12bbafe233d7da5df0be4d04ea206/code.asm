	ldr x13, [x26,x21]
	ldr x1, [x6, #0]
	cmp x26, x1
	b.eq #0xC
	ldr x2, [x13, #14]
	b #0x8
	ldr x4, [x14]
