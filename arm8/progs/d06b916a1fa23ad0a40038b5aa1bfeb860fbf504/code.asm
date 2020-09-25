	ldr x13, [x7,x26]
	ldr x9, [x15, #0]
	cmp x7, x9
	b.eq #0xC
	ldr x16, [x13, #218]
	b #0x8
	ldr x29, [x10, #4]
