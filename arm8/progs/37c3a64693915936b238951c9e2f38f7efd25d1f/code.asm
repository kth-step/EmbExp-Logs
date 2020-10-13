	ldr x26, [x9,x12]
	ldr x5, [x3, #0]
	cmp x9, x5
	b.eq #0xC
	ldr x3, [x26, #218]
	b #0x8
	ldr x21, [x9, #16]
