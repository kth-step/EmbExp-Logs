	ldr x9, [x18,x8]
	ldr x20, [x7, #184]
	cmp x18, x20
	b.eq #0xC
	ldr x8, [x9, #159]
	b #0x8
	ldr x23, [x3, #16]
