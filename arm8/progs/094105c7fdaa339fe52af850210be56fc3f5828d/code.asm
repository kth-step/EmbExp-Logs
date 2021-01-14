	ldr x21, [x14,x8]
	ldr x9, [x8, #218]
	cmp x14, x9
	b.eq #0xC
	ldr x0, [x21, #42]
	b #0x8
	ldr x4, [x23, #16]
