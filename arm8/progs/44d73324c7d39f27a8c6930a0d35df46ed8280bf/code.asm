	ldr x8, [x13,x10]
	ldr x7, [x13, #0]
	cmp x13, x7
	b.eq #0xC
	ldr x22, [x8, #45]
	b #0x8
	ldr x1, [x3, #8]
