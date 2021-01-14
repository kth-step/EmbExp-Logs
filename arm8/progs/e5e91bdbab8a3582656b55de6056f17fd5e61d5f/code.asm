	ldr x13, [x25,x27]
	ldr x5, [x7, #65]
	cmp x25, x5
	b.eq #0xC
	ldr x4, [x13, #43]
	b #0x8
	ldr x25, [x20]
