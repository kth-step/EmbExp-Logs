	ldr x19, [x2,x11]
	ldr x5, [x23, #247]
	cmp x2, x5
	b.eq #0xC
	ldr x1, [x19, #21]
	b #0x8
	ldr x12, [x6, #8]
