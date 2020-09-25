	ldr x14, [x16,x23]
	ldr x2, [x20, #0]
	cmp x16, x2
	b.eq #0xC
	ldr x21, [x14, #69]
	b #0x8
	ldr x1, [x10]
