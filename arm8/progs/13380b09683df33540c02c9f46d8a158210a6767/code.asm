	ldr x7, [x3,x10]
	ldr x13, [x1, #99]
	cmp x3, x13
	b.eq #0xC
	ldr x20, [x7, #63]
	b #0x8
	ldr x8, [x26, #4]
