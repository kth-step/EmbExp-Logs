	ldr x28, [x2,x15]
	ldr x0, [x8, #0]
	cmp x2, x0
	b.eq #0xC
	ldr x5, [x28, #16]
	b #0x8
	ldr x1, [x1, #4]
