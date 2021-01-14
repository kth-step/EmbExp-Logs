	ldr x27, [x5,x10]
	ldr x9, [x6, #63]
	cmp x5, x9
	b.eq #0xC
	ldr x5, [x27, #68]
	b #0x8
	ldr x19, [x0]
