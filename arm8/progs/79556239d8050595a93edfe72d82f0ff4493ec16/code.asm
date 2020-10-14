	ldr x5, [x27,x19]
	ldr x11, [x26, #0]
	cmp x27, x11
	b.eq #0xC
	ldr x8, [x5, #255]
	b #0x8
	ldr x24, [x19, #4]
