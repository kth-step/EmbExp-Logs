	ldr x16, [x9,x5]
	ldr x22, [x13, #0]
	cmp x9, x22
	b.eq #0xC
	ldr x7, [x16, #79]
	b #0x8
	ldr x15, [x9]
