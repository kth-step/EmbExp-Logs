	ldr x21, [x28,x25]
	ldr x12, [x6, #7]
	cmp x28, x12
	b.eq #0xC
	ldr x2, [x21, #218]
	b #0x8
	ldr x3, [x5]
