	ldr x5, [x10,x22]
	ldr x10, [x12, #0]
	cmp x10, x10
	b.eq #0xC
	ldr x8, [x5, #247]
	b #0x8
	ldr x9, [x26]
