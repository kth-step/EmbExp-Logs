	ldr x12, [x20,x25]
	ldr x2, [x11, #0]
	cmp x20, x2
	b.eq #0xC
	ldr x23, [x12, #202]
	b #0x8
	ldr x18, [x4, #8]
