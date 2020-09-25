	ldr x13, [x20,x2]
	ldr x2, [x12, #0]
	cmp x20, x2
	b.eq #0xC
	ldr x11, [x13, #149]
	b #0x8
	ldr x9, [x16, #8]
