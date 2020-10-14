	ldr x20, [x8,x1]
	ldr x17, [x20, #0]
	cmp x8, x17
	b.eq #0xC
	ldr x27, [x20, #185]
	b #0x8
	ldr x13, [x7, #4]
