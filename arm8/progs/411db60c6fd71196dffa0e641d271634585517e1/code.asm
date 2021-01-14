	ldr x2, [x1,x4]
	ldr x9, [x12, #255]
	cmp x1, x9
	b.eq #0xC
	ldr x16, [x2, #174]
	b #0x8
	ldr x4, [x2, #8]
