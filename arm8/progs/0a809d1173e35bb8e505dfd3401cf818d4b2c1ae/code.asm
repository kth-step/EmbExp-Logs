	ldr x11, [x18,x5]
	ldr x21, [x20, #0]
	cmp x18, x21
	b.eq #0xC
	ldr x14, [x11, #17]
	b #0x8
	ldr x5, [x7, #4]
