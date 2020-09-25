	ldr x17, [x8,x2]
	ldr x12, [x17, #0]
	cmp x8, x12
	b.eq #0xC
	ldr x1, [x17, #17]
	b #0x8
	ldr x2, [x10]
