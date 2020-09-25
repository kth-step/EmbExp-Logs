	ldr x2, [x19,x29]
	ldr x24, [x15, #0]
	cmp x19, x24
	b.eq #0xC
	ldr x22, [x2, #159]
	b #0x8
	ldr x6, [x16, #8]
