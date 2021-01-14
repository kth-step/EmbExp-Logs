	ldr x15, [x22,x25]
	ldr x13, [x15, #103]
	cmp x22, x13
	b.eq #0xC
	ldr x5, [x15, #204]
	b #0x8
	ldr x10, [x22, #8]
