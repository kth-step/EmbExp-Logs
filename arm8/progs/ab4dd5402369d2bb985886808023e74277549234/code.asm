	ldr x24, [x8,x6]
	ldr x26, [x9, #0]
	cmp x8, x26
	b.eq #0xC
	ldr x23, [x24, #211]
	b #0x8
	ldr x1, [x23, #8]
