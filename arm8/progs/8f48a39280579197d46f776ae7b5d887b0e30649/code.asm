	ldr x17, [x0,x23]
	ldr x15, [x4, #0]
	cmp x0, x15
	b.eq #0xC
	ldr x2, [x17, #163]
	b #0x8
	ldr x16, [x7, #8]
