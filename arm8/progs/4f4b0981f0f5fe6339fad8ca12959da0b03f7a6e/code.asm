	ldr x26, [x8,x19]
	ldr x15, [x1, #0]
	cmp x8, x15
	b.eq #0xC
	ldr x28, [x26, #235]
	b #0x8
	ldr x16, [x11, #4]
