	ldr x25, [x2,x6]
	ldr x5, [x14, #0]
	cmp x2, x5
	b.eq #0xC
	ldr x6, [x25, #0]
	b #0x8
	ldr x2, [x11, #4]
