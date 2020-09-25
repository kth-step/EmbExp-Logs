	ldr x29, [x3,x8]
	ldr x14, [x4, #0]
	cmp x3, x14
	b.eq #0xC
	ldr x12, [x29, #32]
	b #0x8
	ldr x25, [x22, #16]
