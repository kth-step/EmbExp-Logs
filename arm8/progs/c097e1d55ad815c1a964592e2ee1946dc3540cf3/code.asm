	ldr x15, [x9,x18]
	ldr x23, [x1, #0]
	cmp x9, x23
	b.eq #0xC
	ldr x28, [x15, #7]
	b #0x8
	ldr x14, [x5, #8]
