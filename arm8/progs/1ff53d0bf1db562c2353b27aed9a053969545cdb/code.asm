	ldr x26, [x20,x5]
	ldr x24, [x15, #6]
	cmp x20, x24
	b.eq #0xC
	ldr x11, [x26, #24]
	b #0x8
	ldr x2, [x25]
