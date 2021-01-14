	ldr x3, [x14,x5]
	ldr x19, [x2, #121]
	cmp x14, x19
	b.eq #0xC
	ldr x6, [x3, #95]
	b #0x8
	ldr x27, [x22, #16]
