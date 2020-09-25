	ldr x7, [x27,x11]
	ldr x14, [x16, #0]
	cmp x27, x14
	b.eq #0xC
	ldr x1, [x7, #66]
	b #0x8
	ldr x21, [x4, #4]
