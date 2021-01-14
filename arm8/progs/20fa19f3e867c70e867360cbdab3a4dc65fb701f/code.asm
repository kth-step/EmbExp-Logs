	ldr x22, [x16,x11]
	ldr x12, [x0, #7]
	cmp x16, x12
	b.eq #0xC
	ldr x13, [x22, #16]
	b #0x8
	ldr x3, [x6, #8]
