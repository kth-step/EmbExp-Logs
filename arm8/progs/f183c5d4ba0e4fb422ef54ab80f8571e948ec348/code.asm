	ldr x21, [x14,x10]
	ldr x5, [x1, #0]
	cmp x14, x5
	b.eq #0xC
	ldr x6, [x21, #211]
	b #0x8
	ldr x10, [x24, #8]
