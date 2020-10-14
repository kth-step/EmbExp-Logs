	ldr x19, [x10,x20]
	ldr x25, [x13, #0]
	cmp x10, x25
	b.eq #0xC
	ldr x11, [x19, #103]
	b #0x8
	ldr x10, [x13, #8]
