	ldr x15, [x3,x4]
	ldr x1, [x17, #0]
	cmp x3, x1
	b.eq #0xC
	ldr x11, [x15, #133]
	b #0x8
	ldr x6, [x7, #8]
