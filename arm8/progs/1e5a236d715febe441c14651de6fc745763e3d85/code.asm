	ldr x6, [x0,x23]
	ldr x0, [x5, #85]
	cmp x0, x0
	b.eq #0xC
	ldr x9, [x6, #211]
	b #0x8
	ldr x16, [x3]
