	ldr x22, [x11,x19]
	ldr x11, [x16, #0]
	cmp x11, x11
	b.eq #0xC
	ldr x1, [x22, #247]
	b #0x8
	ldr x4, [x17, #16]
