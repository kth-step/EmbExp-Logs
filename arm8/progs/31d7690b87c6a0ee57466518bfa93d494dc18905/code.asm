	ldr x4, [x16,x23]
	ldr x25, [x7, #218]
	cmp x16, x25
	b.eq #0xC
	ldr x28, [x4, #13]
	b #0x8
	ldr x14, [x23]
