	ldr x11, [x24,x9]
	ldr x20, [x29, #0]
	cmp x24, x20
	b.eq #0xC
	ldr x20, [x11, #53]
	b #0x8
	ldr x9, [x5, #8]
