	ldr x3, [x9,x10]
	ldr x17, [x1, #52]
	cmp x9, x17
	b.eq #0xC
	ldr x22, [x3, #32]
	b #0x8
	ldr x14, [x5]
