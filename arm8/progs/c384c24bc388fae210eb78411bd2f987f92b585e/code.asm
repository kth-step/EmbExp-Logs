	ldr x7, [x16,x6]
	ldr x22, [x15, #43]
	cmp x16, x22
	b.eq #0xC
	ldr x29, [x7, #174]
	b #0x8
	ldr x29, [x8, #16]
