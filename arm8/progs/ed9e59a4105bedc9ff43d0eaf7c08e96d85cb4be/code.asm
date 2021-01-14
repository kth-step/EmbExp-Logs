	ldr x14, [x25,x11]
	ldr x19, [x3, #0]
	cmp x25, x19
	b.eq #0xC
	ldr x17, [x14, #103]
	b #0x8
	ldr x20, [x16, #4]
