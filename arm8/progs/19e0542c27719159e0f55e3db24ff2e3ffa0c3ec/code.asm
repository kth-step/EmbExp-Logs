	ldr x28, [x11,x0]
	ldr x4, [x21, #0]
	cmp x11, x4
	b.eq #0xC
	ldr x2, [x28, #137]
	b #0x8
	ldr x10, [x28]
