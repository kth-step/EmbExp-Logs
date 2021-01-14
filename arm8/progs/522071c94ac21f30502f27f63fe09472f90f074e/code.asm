	ldr x3, [x1,x9]
	ldr x14, [x7, #63]
	cmp x1, x14
	b.eq #0xC
	ldr x23, [x3, #132]
	b #0x8
	ldr x23, [x17]
