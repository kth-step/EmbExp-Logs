	ldr x10, [x12,x13]
	ldr x15, [x24, #247]
	cmp x12, x15
	b.eq #0xC
	ldr x11, [x10, #91]
	b #0x8
	ldr x15, [x5, #4]
