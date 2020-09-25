	ldr x10, [x5,x16]
	ldr x13, [x16, #0]
	cmp x5, x13
	b.eq #0xC
	ldr x6, [x10, #159]
	b #0x8
	ldr x6, [x14, #4]
