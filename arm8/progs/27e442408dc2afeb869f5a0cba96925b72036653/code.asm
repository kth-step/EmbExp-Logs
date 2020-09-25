	ldr x6, [x7,x10]
	ldr x7, [x2, #0]
	cmp x7, x7
	b.eq #0xC
	ldr x3, [x6, #18]
	b #0x8
	ldr x15, [x26, #16]
