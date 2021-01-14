	ldr x7, [x3,x13]
	ldr x6, [x25, #201]
	cmp x3, x6
	b.eq #0xC
	ldr x4, [x7, #76]
	b #0x8
	ldr x11, [x19, #8]
