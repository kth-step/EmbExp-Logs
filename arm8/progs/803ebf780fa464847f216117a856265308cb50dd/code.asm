	ldr x26, [x9,x13]
	ldr x20, [x21, #169]
	cmp x9, x20
	b.eq #0xC
	ldr x1, [x26, #38]
	b #0x8
	ldr x6, [x28]
