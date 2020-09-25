	ldr x17, [x11,x6]
	ldr x3, [x25, #0]
	cmp x11, x3
	b.eq #0xC
	ldr x29, [x17, #11]
	b #0x8
	ldr x1, [x26, #8]
