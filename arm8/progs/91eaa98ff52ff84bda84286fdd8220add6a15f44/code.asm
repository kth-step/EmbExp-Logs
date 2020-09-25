	ldr x16, [x8,x14]
	ldr x28, [x26, #0]
	cmp x8, x28
	b.eq #0xC
	ldr x10, [x16, #149]
	b #0x8
	ldr x26, [x0, #8]
