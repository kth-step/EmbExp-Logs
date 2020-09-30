	ldr x14, [x3,x20]
	ldr x29, [x2, #0]
	cmp x3, x29
	b.eq #0xC
	ldr x6, [x14, #32]
	b #0x8
	ldr x17, [x22, #16]
