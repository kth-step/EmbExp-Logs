	ldr x5, [x1,x28]
	ldr x8, [x22, #0]
	cmp x1, x8
	b.eq #0xC
	ldr x2, [x5, #52]
	b #0x8
	ldr x25, [x12]
