	ldr x25, [x10,x28]
	ldr x24, [x23, #0]
	cmp x10, x24
	b.eq #0xC
	ldr x8, [x25, #194]
	b #0x8
	ldr x15, [x16, #8]
