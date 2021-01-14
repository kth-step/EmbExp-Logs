	ldr x2, [x3,x14]
	ldr x22, [x2, #252]
	cmp x3, x22
	b.eq #0xC
	ldr x26, [x2, #52]
	b #0x8
	ldr x1, [x12, #16]
