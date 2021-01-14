	ldr x25, [x5,x20]
	ldr x11, [x28, #116]
	cmp x5, x11
	b.eq #0xC
	ldr x15, [x25, #204]
	b #0x8
	ldr x1, [x1, #8]
