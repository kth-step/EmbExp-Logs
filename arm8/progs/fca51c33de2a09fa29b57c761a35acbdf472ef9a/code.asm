	ldr x11, [x16,x19]
	ldr x27, [x9, #0]
	cmp x16, x27
	b.eq #0xC
	ldr x2, [x11, #63]
	b #0x8
	ldr x28, [x6, #4]
