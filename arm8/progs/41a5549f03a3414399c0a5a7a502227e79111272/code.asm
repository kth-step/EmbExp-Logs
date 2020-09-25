	ldr x5, [x11,x29]
	ldr x12, [x1, #0]
	cmp x11, x12
	b.eq #0xC
	ldr x10, [x5, #4]
	b #0x8
	ldr x2, [x8, #16]
