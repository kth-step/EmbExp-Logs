	ldr x2, [x16,x23]
	ldr x10, [x23, #109]
	cmp x16, x10
	b.eq #0xC
	ldr x22, [x2, #218]
	b #0x8
	ldr x7, [x21, #16]
