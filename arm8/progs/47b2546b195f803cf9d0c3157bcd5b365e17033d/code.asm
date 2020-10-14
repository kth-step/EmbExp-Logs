	ldr x28, [x13,x9]
	ldr x21, [x23, #0]
	cmp x13, x21
	b.eq #0xC
	ldr x12, [x28, #69]
	b #0x8
	ldr x9, [x2, #8]
