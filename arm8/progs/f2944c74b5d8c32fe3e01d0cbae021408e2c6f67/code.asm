	ldr x9, [x13,x11]
	ldr x11, [x14, #0]
	cmp x13, x11
	b.eq #0xC
	ldr x20, [x9, #244]
	b #0x8
	ldr x13, [x21, #4]
