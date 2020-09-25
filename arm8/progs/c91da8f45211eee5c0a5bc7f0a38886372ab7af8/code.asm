	ldr x11, [x26,x27]
	ldr x17, [x28, #0]
	cmp x26, x17
	b.eq #0xC
	ldr x5, [x11, #4]
	b #0x8
	ldr x13, [x29, #8]
