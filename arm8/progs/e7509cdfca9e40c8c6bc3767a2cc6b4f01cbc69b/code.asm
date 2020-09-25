	ldr x14, [x27,x5]
	ldr x10, [x3, #0]
	cmp x27, x10
	b.eq #0xC
	ldr x7, [x14, #159]
	b #0x8
	ldr x5, [x17, #8]
