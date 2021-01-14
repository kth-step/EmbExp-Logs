	ldr x6, [x2,x12]
	ldr x28, [x29, #181]
	cmp x2, x28
	b.eq #0xC
	ldr x16, [x6, #3]
	b #0x8
	ldr x28, [x3]
