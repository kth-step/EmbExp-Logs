	ldr x5, [x28,x20]
	ldr x14, [x23, #204]
	cmp x28, x14
	b.eq #0xC
	ldr x17, [x5, #26]
	b #0x8
	ldr x11, [x25]
