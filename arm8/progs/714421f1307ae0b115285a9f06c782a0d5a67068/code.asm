	ldr x16, [x10,x3]
	ldr x13, [x0, #227]
	cmp x10, x13
	b.eq #0xC
	ldr x4, [x16, #13]
	b #0x8
	ldr x6, [x10]
