	ldr x2, [x12,x9]
	ldr x21, [x8, #79]
	cmp x12, x21
	b.eq #0xC
	ldr x25, [x2, #52]
	b #0x8
	ldr x10, [x1, #8]
