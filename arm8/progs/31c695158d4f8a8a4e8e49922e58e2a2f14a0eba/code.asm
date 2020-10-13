	ldr x27, [x4,x21]
	ldr x8, [x13, #0]
	cmp x4, x8
	b.eq #0xC
	ldr x10, [x27, #65]
	b #0x8
	ldr x23, [x25]
