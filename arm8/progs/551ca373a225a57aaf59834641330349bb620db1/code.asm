	ldr x29, [x27,x7]
	ldr x27, [x13, #21]
	cmp x27, x27
	b.eq #0xC
	ldr x0, [x29, #77]
	b #0x8
	ldr x11, [x28, #4]
