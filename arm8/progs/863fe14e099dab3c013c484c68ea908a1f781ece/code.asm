	ldr x2, [x1,x25]
	ldr x28, [x3, #0]
	cmp x1, x28
	b.eq #0xC
	ldr x0, [x2, #204]
	b #0x8
	ldr x15, [x28, #16]
