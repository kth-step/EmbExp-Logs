	ldr x27, [x13,x29]
	ldr x6, [x29, #218]
	cmp x13, x6
	b.eq #0xC
	ldr x20, [x27, #34]
	b #0x8
	ldr x16, [x26, #8]
