	ldr x16, [x0,x23]
	ldr x0, [x2, #0]
	cmp x0, x0
	b.eq #0xC
	ldr x23, [x16, #107]
	b #0x8
	ldr x28, [x8]
