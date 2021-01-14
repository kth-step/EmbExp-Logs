	ldr x13, [x15,x29]
	ldr x23, [x16, #62]
	cmp x15, x23
	b.eq #0xC
	ldr x4, [x13, #105]
	b #0x8
	ldr x23, [x3, #8]
