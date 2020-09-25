	ldr x6, [x17,x10]
	ldr x11, [x23, #0]
	cmp x17, x11
	b.eq #0xC
	ldr x12, [x6, #199]
	b #0x8
	ldr x17, [x4, #16]
