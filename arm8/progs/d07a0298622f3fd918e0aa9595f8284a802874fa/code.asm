	ldr x21, [x10,x14]
	ldr x2, [x18, #0]
	cmp x10, x2
	b.eq #0xC
	ldr x5, [x21, #32]
	b #0x8
	ldr x4, [x8, #16]
