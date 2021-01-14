	ldr x9, [x8,x8]
	ldr x23, [x15, #38]
	cmp x8, x23
	b.eq #0xC
	ldr x15, [x9, #45]
	b #0x8
	ldr x4, [x16, #8]
