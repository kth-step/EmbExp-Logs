	ldr x13, [x27,x11]
	ldr x10, [x21, #0]
	cmp x27, x10
	b.eq #0xC
	ldr x1, [x13, #227]
	b #0x8
	ldr x17, [x13, #4]
