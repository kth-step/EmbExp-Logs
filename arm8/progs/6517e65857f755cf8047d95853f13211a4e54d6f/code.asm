	ldr x9, [x14,x15]
	ldr x29, [x15, #0]
	cmp x14, x29
	b.eq #0xC
	ldr x13, [x9, #211]
	b #0x8
	ldr x17, [x17, #4]
