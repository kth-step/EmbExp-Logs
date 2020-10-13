	ldr x5, [x16,x12]
	ldr x4, [x1, #0]
	cmp x16, x4
	b.eq #0xC
	ldr x8, [x5, #14]
	b #0x8
	ldr x20, [x7, #8]
