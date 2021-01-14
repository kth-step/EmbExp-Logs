	ldr x3, [x9,x6]
	ldr x2, [x5, #58]
	cmp x9, x2
	b.eq #0xC
	ldr x4, [x3, #4]
	b #0x8
	ldr x24, [x25]
