	ldr x11, [x29,x0]
	ldr x17, [x14, #0]
	cmp x29, x17
	b.eq #0xC
	ldr x3, [x11, #85]
	b #0x8
	ldr x9, [x10, #8]
