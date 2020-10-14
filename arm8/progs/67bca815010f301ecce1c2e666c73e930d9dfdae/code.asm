	ldr x20, [x27,x9]
	ldr x26, [x8, #0]
	cmp x27, x26
	b.eq #0xC
	ldr x11, [x20, #231]
	b #0x8
	ldr x16, [x5]
