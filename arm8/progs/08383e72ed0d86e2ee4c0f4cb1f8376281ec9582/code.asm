	ldr x9, [x14,x15]
	ldr x6, [x3, #0]
	cmp x14, x6
	b.eq #0xC
	ldr x1, [x9, #6]
	b #0x8
	ldr x17, [x15]
