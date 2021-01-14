	ldr x6, [x20,x25]
	ldr x4, [x28, #27]
	cmp x20, x4
	b.eq #0xC
	ldr x13, [x6, #212]
	b #0x8
	ldr x2, [x5, #16]
