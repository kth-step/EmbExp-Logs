	ldr x2, [x16,x3]
	ldr x28, [x13, #235]
	cmp x16, x28
	b.eq #0xC
	ldr x22, [x2, #52]
	b #0x8
	ldr x29, [x23]
