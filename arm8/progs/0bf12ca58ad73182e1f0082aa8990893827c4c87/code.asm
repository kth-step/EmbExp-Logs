	ldr x10, [x1,x25]
	ldr x22, [x25, #0]
	cmp x1, x22
	b.eq #0xC
	ldr x11, [x10, #202]
	b #0x8
	ldr x17, [x23]
