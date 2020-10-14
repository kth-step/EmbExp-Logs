	ldr x23, [x1,x28]
	ldr x4, [x17, #0]
	cmp x1, x4
	b.eq #0xC
	ldr x15, [x23, #32]
	b #0x8
	ldr x5, [x12, #4]
