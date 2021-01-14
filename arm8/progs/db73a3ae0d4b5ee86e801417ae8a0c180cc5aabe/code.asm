	ldr x13, [x9,x9]
	ldr x27, [x1, #21]
	cmp x9, x27
	b.eq #0xC
	ldr x8, [x13, #190]
	b #0x8
	ldr x4, [x14, #8]
