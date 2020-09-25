	ldr x7, [x23,x6]
	ldr x2, [x14, #0]
	cmp x23, x2
	b.eq #0xC
	ldr x17, [x7, #71]
	b #0x8
	ldr x13, [x22, #16]
