	ldr x5, [x26,x2]
	ldr x3, [x14, #0]
	cmp x26, x3
	b.eq #0xC
	ldr x20, [x5, #31]
	b #0x8
	ldr x11, [x23, #16]
