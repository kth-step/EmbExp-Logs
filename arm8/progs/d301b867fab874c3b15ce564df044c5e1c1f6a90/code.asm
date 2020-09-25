	ldr x3, [x15,x10]
	ldr x23, [x17, #0]
	cmp x15, x23
	b.eq #0xC
	ldr x16, [x3, #132]
	b #0x8
	ldr x5, [x28, #8]
