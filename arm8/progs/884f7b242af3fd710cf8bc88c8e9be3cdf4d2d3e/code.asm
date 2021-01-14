	ldr x3, [x0,x25]
	ldr x6, [x1, #28]
	cmp x0, x6
	b.eq #0xC
	ldr x5, [x3, #36]
	b #0x8
	ldr x27, [x27, #4]
