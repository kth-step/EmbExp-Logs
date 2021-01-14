	ldr x22, [x14,x11]
	ldr x20, [x3, #247]
	cmp x14, x20
	b.eq #0xC
	ldr x29, [x22, #153]
	b #0x8
	ldr x22, [x2, #16]
