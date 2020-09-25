	ldr x17, [x28,x25]
	ldr x2, [x29, #0]
	cmp x28, x2
	b.eq #0xC
	ldr x28, [x17, #206]
	b #0x8
	ldr x5, [x0]
