	ldr x14, [x8,x0]
	ldr x9, [x2, #17]
	cmp x8, x9
	b.eq #0xC
	ldr x19, [x14, #138]
	b #0x8
	ldr x21, [x21, #8]
