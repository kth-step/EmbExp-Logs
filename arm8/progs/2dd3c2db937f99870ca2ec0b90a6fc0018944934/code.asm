	ldr x5, [x11,x25]
	ldr x14, [x29, #0]
	cmp x11, x14
	b.eq #0xC
	ldr x14, [x5, #47]
	b #0x8
	ldr x0, [x25, #16]
