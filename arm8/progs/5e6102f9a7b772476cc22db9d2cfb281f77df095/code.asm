	ldr x24, [x4,x5]
	ldr x3, [x27, #0]
	cmp x4, x3
	b.eq #0xC
	ldr x27, [x24, #247]
	b #0x8
	ldr x18, [x3, #4]
