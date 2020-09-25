	ldr x29, [x28,x1]
	ldr x1, [x10, #0]
	cmp x28, x1
	b.eq #0xC
	ldr x6, [x29, #62]
	b #0x8
	ldr x0, [x1]
