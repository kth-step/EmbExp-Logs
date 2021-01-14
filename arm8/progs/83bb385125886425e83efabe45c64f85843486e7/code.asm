	ldr x19, [x10,x25]
	ldr x2, [x14, #38]
	cmp x10, x2
	b.eq #0xC
	ldr x2, [x19, #95]
	b #0x8
	ldr x5, [x23, #8]
