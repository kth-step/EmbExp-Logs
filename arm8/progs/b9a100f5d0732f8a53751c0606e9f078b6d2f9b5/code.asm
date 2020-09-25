	ldr x2, [x14,x23]
	ldr x14, [x3, #0]
	cmp x14, x14
	b.eq #0xC
	ldr x11, [x2, #202]
	b #0x8
	ldr x17, [x10, #8]
