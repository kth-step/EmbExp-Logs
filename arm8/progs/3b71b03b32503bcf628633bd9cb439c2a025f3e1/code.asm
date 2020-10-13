	ldr x17, [x29,x10]
	ldr x16, [x18, #0]
	cmp x29, x16
	b.eq #0xC
	ldr x20, [x17, #38]
	b #0x8
	ldr x2, [x0, #8]
