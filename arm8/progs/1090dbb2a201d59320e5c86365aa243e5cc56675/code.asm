	ldr x7, [x5,x4]
	ldr x2, [x8, #0]
	cmp x5, x2
	b.eq #0xC
	ldr x22, [x7, #149]
	b #0x8
	ldr x21, [x17, #16]
