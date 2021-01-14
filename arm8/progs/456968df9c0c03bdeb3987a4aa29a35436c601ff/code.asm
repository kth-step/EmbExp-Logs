	ldr x17, [x10,x16]
	ldr x5, [x6, #132]
	cmp x10, x5
	b.eq #0xC
	ldr x10, [x17, #68]
	b #0x8
	ldr x9, [x28, #4]
