	ldr x26, [x11,x12]
	ldr x7, [x12, #0]
	cmp x11, x7
	b.eq #0xC
	ldr x20, [x26, #58]
	b #0x8
	ldr x1, [x20, #8]
