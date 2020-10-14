	ldr x16, [x0,x9]
	ldr x10, [x17, #0]
	cmp x0, x10
	b.eq #0xC
	ldr x26, [x16, #65]
	b #0x8
	ldr x3, [x29, #8]
