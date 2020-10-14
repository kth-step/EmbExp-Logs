	ldr x24, [x10,x11]
	ldr x7, [x18, #0]
	cmp x10, x7
	b.eq #0xC
	ldr x15, [x24, #71]
	b #0x8
	ldr x18, [x5, #8]
