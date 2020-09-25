	ldr x8, [x0,x7]
	ldr x11, [x16, #0]
	cmp x0, x11
	b.eq #0xC
	ldr x25, [x8, #220]
	b #0x8
	ldr x5, [x13, #8]
