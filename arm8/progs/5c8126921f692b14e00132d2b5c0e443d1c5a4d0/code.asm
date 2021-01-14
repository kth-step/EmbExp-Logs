	ldr x5, [x25,x0]
	ldr x6, [x10, #159]
	cmp x25, x6
	b.eq #0xC
	ldr x19, [x5, #152]
	b #0x8
	ldr x6, [x7, #8]
