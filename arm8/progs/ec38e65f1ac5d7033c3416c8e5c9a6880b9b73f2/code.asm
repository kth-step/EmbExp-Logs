	ldr x4, [x13,x11]
	ldr x29, [x3, #0]
	cmp x13, x29
	b.eq #0xC
	ldr x0, [x4, #168]
	b #0x8
	ldr x16, [x17, #4]
