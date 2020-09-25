	ldr x20, [x14,x6]
	ldr x13, [x26, #0]
	cmp x14, x13
	b.eq #0xC
	ldr x16, [x20, #5]
	b #0x8
	ldr x1, [x5]
