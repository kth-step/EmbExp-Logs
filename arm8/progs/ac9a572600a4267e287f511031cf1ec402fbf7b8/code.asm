	ldr x10, [x2,x15]
	ldr x23, [x0, #157]
	cmp x2, x23
	b.eq #0xC
	ldr x0, [x10, #211]
	b #0x8
	ldr x18, [x29]
