	ldr x9, [x11,x3]
	ldr x1, [x5, #26]
	cmp x11, x1
	b.eq #0xC
	ldr x22, [x9, #3]
	b #0x8
	ldr x4, [x2, #8]
