	ldr x6, [x10,x13]
	ldr x22, [x12, #0]
	cmp x10, x22
	b.eq #0xC
	ldr x1, [x6, #120]
	b #0x8
	ldr x20, [x4, #16]
