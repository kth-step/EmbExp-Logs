	ldr x9, [x16,x5]
	ldr x17, [x6, #0]
	cmp x16, x17
	b.eq #0xC
	ldr x21, [x9, #229]
	b #0x8
	ldr x13, [x15, #16]
