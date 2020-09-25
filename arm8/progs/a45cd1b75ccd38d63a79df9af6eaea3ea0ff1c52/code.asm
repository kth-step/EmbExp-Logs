	ldr x12, [x3,x5]
	ldr x29, [x0, #0]
	cmp x3, x29
	b.eq #0xC
	ldr x11, [x12, #142]
	b #0x8
	ldr x1, [x11, #8]
