	ldr x4, [x6,x13]
	ldr x9, [x11, #0]
	cmp x6, x9
	b.eq #0xC
	ldr x5, [x4, #202]
	b #0x8
	ldr x15, [x18, #16]
