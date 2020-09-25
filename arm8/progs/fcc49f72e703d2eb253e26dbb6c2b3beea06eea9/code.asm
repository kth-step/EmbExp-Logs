	ldr x18, [x15,x9]
	ldr x27, [x5, #0]
	cmp x15, x27
	b.eq #0xC
	ldr x4, [x18, #77]
	b #0x8
	ldr x27, [x5, #8]
