	ldr x4, [x17,x2]
	ldr x13, [x11, #0]
	cmp x17, x13
	b.eq #0xC
	ldr x26, [x4, #6]
	b #0x8
	ldr x26, [x21, #4]
