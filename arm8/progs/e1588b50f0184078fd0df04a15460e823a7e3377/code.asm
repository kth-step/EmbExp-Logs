	ldr x2, [x22,x18]
	ldr x15, [x13, #43]
	cmp x22, x15
	b.eq #0xC
	ldr x0, [x2, #7]
	b #0x8
	ldr x18, [x5, #8]
