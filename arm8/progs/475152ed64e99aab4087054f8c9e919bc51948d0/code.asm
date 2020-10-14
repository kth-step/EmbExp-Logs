	ldr x26, [x9,x16]
	ldr x14, [x3, #0]
	cmp x9, x14
	b.eq #0xC
	ldr x21, [x26, #211]
	b #0x8
	ldr x9, [x1]
