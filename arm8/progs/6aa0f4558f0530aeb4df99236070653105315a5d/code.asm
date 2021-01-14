	ldr x2, [x29,x13]
	ldr x20, [x25, #232]
	cmp x29, x20
	b.eq #0xC
	ldr x16, [x2, #105]
	b #0x8
	ldr x3, [x9, #4]
