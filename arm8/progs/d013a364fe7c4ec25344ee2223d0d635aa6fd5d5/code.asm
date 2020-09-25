	ldr x22, [x3,x1]
	ldr x13, [x4, #0]
	cmp x3, x13
	b.eq #0xC
	ldr x10, [x22, #190]
	b #0x8
	ldr x22, [x5, #8]
