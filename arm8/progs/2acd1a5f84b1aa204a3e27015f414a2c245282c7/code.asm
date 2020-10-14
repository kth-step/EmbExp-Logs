	ldr x27, [x17,x10]
	ldr x10, [x1, #0]
	cmp x17, x10
	b.eq #0xC
	ldr x16, [x27, #218]
	b #0x8
	ldr x5, [x22, #16]
