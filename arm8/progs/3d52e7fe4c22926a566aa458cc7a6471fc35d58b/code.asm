	ldr x11, [x10,x25]
	ldr x15, [x3, #0]
	cmp x10, x15
	b.eq #0xC
	ldr x5, [x11, #204]
	b #0x8
	ldr x25, [x24, #16]
