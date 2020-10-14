	ldr x19, [x0,x9]
	ldr x8, [x7, #0]
	cmp x0, x8
	b.eq #0xC
	ldr x4, [x19, #247]
	b #0x8
	ldr x5, [x15, #16]
