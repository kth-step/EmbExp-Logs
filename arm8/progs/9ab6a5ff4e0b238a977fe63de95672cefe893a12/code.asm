	ldr x23, [x2,x21]
	ldr x3, [x8, #0]
	cmp x2, x3
	b.eq #0xC
	ldr x6, [x23, #29]
	b #0x8
	ldr x22, [x12]
