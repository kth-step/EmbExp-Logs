	ldr x13, [x3,x5]
	ldr x19, [x28, #0]
	cmp x3, x19
	b.eq #0xC
	ldr x1, [x13, #107]
	b #0x8
	ldr x3, [x13, #16]
