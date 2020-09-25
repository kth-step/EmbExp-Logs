	ldr x22, [x28,x3]
	ldr x26, [x1, #0]
	cmp x28, x26
	b.eq #0xC
	ldr x13, [x22, #228]
	b #0x8
	ldr x7, [x2, #8]
