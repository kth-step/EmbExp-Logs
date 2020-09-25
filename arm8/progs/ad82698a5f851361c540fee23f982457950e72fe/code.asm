	ldr x17, [x21,x20]
	ldr x9, [x7, #0]
	cmp x21, x9
	b.eq #0xC
	ldr x20, [x17, #2]
	b #0x8
	ldr x3, [x23, #16]
