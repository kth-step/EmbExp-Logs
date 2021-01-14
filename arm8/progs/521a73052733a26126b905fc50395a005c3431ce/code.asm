	ldr x9, [x1,x23]
	ldr x5, [x26, #151]
	cmp x1, x5
	b.eq #0xC
	ldr x16, [x9, #231]
	b #0x8
	ldr x11, [x10, #4]
