	ldr x5, [x8,x6]
	ldr x15, [x5, #65]
	cmp x8, x15
	b.eq #0xC
	ldr x20, [x5, #0]
	b #0x8
	ldr x1, [x0, #8]
