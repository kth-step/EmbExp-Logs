	ldr x9, [x19,x10]
	ldr x11, [x22, #0]
	cmp x19, x11
	b.eq #0xC
	ldr x0, [x9, #43]
	b #0x8
	ldr x20, [x9, #8]
