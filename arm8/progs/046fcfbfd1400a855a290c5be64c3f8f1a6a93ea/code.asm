	ldr x17, [x5,x24]
	ldr x20, [x17, #0]
	cmp x5, x20
	b.eq #0xC
	ldr x25, [x17, #218]
	b #0x8
	ldr x18, [x11, #8]
