	ldr x25, [x16,x20]
	ldr x21, [x29, #0]
	cmp x16, x21
	b.eq #0xC
	ldr x14, [x25, #247]
	b #0x8
	ldr x3, [x22, #16]
