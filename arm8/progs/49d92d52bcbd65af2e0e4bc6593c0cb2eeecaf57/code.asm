	ldr x4, [x7,x17]
	ldr x17, [x1, #0]
	cmp x7, x17
	b.eq #0xC
	ldr x9, [x4, #190]
	b #0x8
	ldr x20, [x4, #8]
