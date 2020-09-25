	ldr x3, [x24,x13]
	ldr x4, [x29, #0]
	cmp x24, x4
	b.eq #0xC
	ldr x11, [x3, #36]
	b #0x8
	ldr x0, [x25]
