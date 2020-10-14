	ldr x16, [x21,x27]
	ldr x6, [x17, #0]
	cmp x21, x6
	b.eq #0xC
	ldr x13, [x16, #218]
	b #0x8
	ldr x29, [x17, #16]
