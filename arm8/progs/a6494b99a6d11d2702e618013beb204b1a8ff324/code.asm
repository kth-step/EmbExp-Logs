	ldr x6, [x11,x20]
	ldr x3, [x21, #0]
	cmp x11, x3
	b.eq #0xC
	ldr x11, [x6, #20]
	b #0x8
	ldr x27, [x2, #8]
