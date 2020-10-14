	ldr x11, [x28,x21]
	ldr x5, [x13, #0]
	cmp x28, x5
	b.eq #0xC
	ldr x28, [x11, #4]
	b #0x8
	ldr x27, [x0]
