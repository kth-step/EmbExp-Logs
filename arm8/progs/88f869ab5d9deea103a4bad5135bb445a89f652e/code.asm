	ldr x16, [x15,x23]
	ldr x21, [x0, #0]
	cmp x15, x21
	b.eq #0xC
	ldr x7, [x16, #117]
	b #0x8
	ldr x8, [x4]
