	ldr x15, [x29,x4]
	ldr x8, [x25, #0]
	cmp x29, x8
	b.eq #0xC
	ldr x11, [x15, #38]
	b #0x8
	ldr x5, [x17, #16]
