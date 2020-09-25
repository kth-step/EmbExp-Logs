	ldr x14, [x27,x23]
	ldr x23, [x5, #0]
	cmp x27, x23
	b.eq #0xC
	ldr x23, [x14, #159]
	b #0x8
	ldr x18, [x3, #8]
