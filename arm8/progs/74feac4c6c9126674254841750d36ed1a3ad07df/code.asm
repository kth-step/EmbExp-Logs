	ldr x11, [x6,x0]
	ldr x2, [x11, #61]
	cmp x6, x2
	b.eq #0xC
	ldr x13, [x11, #60]
	b #0x8
	ldr x21, [x18, #8]
