	ldr x22, [x12,x13]
	ldr x14, [x25, #0]
	cmp x12, x14
	b.eq #0xC
	ldr x1, [x22, #231]
	b #0x8
	ldr x5, [x14, #16]
