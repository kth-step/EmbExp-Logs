	ldr x26, [x28,x6]
	ldr x21, [x14, #61]
	cmp x28, x21
	b.eq #0xC
	ldr x11, [x26, #29]
	b #0x8
	ldr x20, [x20, #8]
