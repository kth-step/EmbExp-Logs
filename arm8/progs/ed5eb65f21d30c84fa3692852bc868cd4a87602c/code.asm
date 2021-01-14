	ldr x28, [x1,x9]
	ldr x4, [x13, #199]
	cmp x1, x4
	b.eq #0xC
	ldr x0, [x28, #254]
	b #0x8
	ldr x28, [x8, #16]
