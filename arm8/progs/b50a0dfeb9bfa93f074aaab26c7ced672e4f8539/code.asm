	ldr x23, [x1,x0]
	ldr x20, [x1, #0]
	cmp x1, x20
	b.eq #0xC
	ldr x11, [x23, #247]
	b #0x8
	ldr x5, [x21, #8]
