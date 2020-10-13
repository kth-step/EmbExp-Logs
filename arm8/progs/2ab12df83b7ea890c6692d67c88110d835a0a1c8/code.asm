	ldr x4, [x23,x6]
	ldr x22, [x17, #0]
	cmp x23, x22
	b.eq #0xC
	ldr x2, [x4, #159]
	b #0x8
	ldr x20, [x25, #8]
