	ldr x10, [x13,x11]
	ldr x17, [x26, #0]
	cmp x13, x17
	b.eq #0xC
	ldr x15, [x10, #12]
	b #0x8
	ldr x6, [x21, #4]
