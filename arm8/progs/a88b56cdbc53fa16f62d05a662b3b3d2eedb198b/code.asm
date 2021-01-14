	ldr x2, [x24,x17]
	ldr x23, [x14, #8]
	cmp x24, x23
	b.eq #0xC
	ldr x3, [x2, #21]
	b #0x8
	ldr x1, [x9, #16]
