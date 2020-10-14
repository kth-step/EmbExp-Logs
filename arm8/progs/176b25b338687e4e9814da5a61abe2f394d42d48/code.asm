	ldr x23, [x5,x25]
	ldr x18, [x16, #0]
	cmp x5, x18
	b.eq #0xC
	ldr x3, [x23, #63]
	b #0x8
	ldr x13, [x28, #4]
