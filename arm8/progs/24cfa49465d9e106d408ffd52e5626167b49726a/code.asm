	ldr x2, [x9,x25]
	ldr x3, [x5, #0]
	cmp x9, x3
	b.eq #0xC
	ldr x13, [x2, #178]
	b #0x8
	ldr x5, [x16]
