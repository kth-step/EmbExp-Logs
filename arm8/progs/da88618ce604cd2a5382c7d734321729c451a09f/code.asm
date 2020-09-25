	ldr x6, [x27,x13]
	ldr x3, [x13, #0]
	cmp x27, x3
	b.eq #0xC
	ldr x2, [x6, #185]
	b #0x8
	ldr x22, [x2, #8]
