	ldr x7, [x28,x14]
	ldr x5, [x14, #0]
	cmp x28, x5
	b.eq #0xC
	ldr x15, [x7, #17]
	b #0x8
	ldr x12, [x1]
