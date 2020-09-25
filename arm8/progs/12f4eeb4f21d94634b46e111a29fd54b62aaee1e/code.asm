	ldr x2, [x6,x13]
	ldr x5, [x3, #0]
	cmp x6, x5
	b.eq #0xC
	ldr x14, [x2, #231]
	b #0x8
	ldr x12, [x1, #4]
