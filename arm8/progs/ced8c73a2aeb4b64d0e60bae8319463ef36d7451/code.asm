	ldr x8, [x14,x5]
	ldr x17, [x1, #0]
	cmp x14, x17
	b.eq #0xC
	ldr x13, [x8, #210]
	b #0x8
	ldr x28, [x5]
