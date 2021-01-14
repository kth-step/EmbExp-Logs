	ldr x4, [x26,x15]
	ldr x15, [x13, #38]
	cmp x26, x15
	b.eq #0xC
	ldr x6, [x4, #25]
	b #0x8
	ldr x29, [x27, #4]
