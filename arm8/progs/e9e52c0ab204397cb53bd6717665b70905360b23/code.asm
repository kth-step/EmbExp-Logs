	ldr x10, [x11,x6]
	ldr x6, [x27, #46]
	cmp x11, x6
	b.eq #0xC
	ldr x9, [x10, #62]
	b #0x8
	ldr x27, [x28, #8]
