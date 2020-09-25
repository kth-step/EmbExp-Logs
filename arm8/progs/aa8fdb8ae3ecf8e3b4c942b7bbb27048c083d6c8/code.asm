	ldr x26, [x10,x20]
	ldr x17, [x11, #0]
	cmp x10, x17
	b.eq #0xC
	ldr x9, [x26, #41]
	b #0x8
	ldr x14, [x26, #8]
