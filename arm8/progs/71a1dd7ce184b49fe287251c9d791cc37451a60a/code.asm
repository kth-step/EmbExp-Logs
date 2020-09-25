	ldr x6, [x4,x1]
	ldr x3, [x11, #0]
	cmp x4, x3
	b.eq #0xC
	ldr x7, [x6, #34]
	b #0x8
	ldr x23, [x7, #4]
