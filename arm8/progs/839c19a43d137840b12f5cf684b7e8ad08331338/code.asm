	ldr x13, [x9,x29]
	ldr x7, [x5, #0]
	cmp x9, x7
	b.eq #0xC
	ldr x8, [x13, #210]
	b #0x8
	ldr x12, [x19]
