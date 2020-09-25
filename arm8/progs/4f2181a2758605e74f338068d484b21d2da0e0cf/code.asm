	ldr x10, [x18,x28]
	ldr x11, [x24, #0]
	cmp x18, x11
	b.eq #0xC
	ldr x4, [x10, #42]
	b #0x8
	ldr x11, [x2, #8]
