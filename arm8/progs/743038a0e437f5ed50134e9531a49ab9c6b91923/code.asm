	ldr x28, [x9,x22]
	ldr x14, [x28, #0]
	cmp x9, x14
	b.eq #0xC
	ldr x2, [x28, #68]
	b #0x8
	ldr x20, [x15, #8]
