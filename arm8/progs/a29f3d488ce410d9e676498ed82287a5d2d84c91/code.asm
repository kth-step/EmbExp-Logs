	ldr x11, [x0,x10]
	ldr x14, [x16, #0]
	cmp x0, x14
	b.eq #0xC
	ldr x25, [x11, #164]
	b #0x8
	ldr x14, [x11, #8]
