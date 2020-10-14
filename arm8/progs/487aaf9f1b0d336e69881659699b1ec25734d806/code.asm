	ldr x8, [x3,x15]
	ldr x15, [x7, #0]
	cmp x3, x15
	b.eq #0xC
	ldr x22, [x8, #149]
	b #0x8
	ldr x28, [x3, #16]
