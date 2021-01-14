	ldr x16, [x8,x10]
	ldr x20, [x24, #21]
	cmp x8, x20
	b.eq #0xC
	ldr x3, [x16, #184]
	b #0x8
	ldr x0, [x7]
