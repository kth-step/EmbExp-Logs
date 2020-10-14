	ldr x25, [x4,x1]
	ldr x11, [x13, #0]
	cmp x4, x11
	b.eq #0xC
	ldr x5, [x25, #140]
	b #0x8
	ldr x1, [x7]
