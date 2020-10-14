	ldr x5, [x2,x8]
	ldr x8, [x19, #0]
	cmp x2, x8
	b.eq #0xC
	ldr x9, [x5, #201]
	b #0x8
	ldr x16, [x23]
