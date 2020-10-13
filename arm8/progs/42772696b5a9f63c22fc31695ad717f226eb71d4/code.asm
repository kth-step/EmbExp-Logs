	ldr x7, [x17,x6]
	ldr x3, [x2, #0]
	cmp x17, x3
	b.eq #0xC
	ldr x13, [x7, #0]
	b #0x8
	ldr x2, [x22, #16]
