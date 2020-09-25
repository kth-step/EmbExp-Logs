	ldr x29, [x28,x20]
	ldr x17, [x21, #0]
	cmp x28, x17
	b.eq #0xC
	ldr x2, [x29, #103]
	b #0x8
	ldr x11, [x6]
