	ldr x16, [x1,x7]
	ldr x6, [x14, #0]
	cmp x1, x6
	b.eq #0xC
	ldr x21, [x16, #0]
	b #0x8
	ldr x20, [x0, #8]
