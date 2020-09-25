	ldr x10, [x4,x18]
	ldr x26, [x7, #0]
	cmp x4, x26
	b.eq #0xC
	ldr x3, [x10, #204]
	b #0x8
	ldr x11, [x27, #4]
