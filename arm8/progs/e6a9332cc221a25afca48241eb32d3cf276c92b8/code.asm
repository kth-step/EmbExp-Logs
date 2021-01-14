	ldr x22, [x16,x3]
	ldr x8, [x12, #199]
	cmp x16, x8
	b.eq #0xC
	ldr x15, [x22, #128]
	b #0x8
	ldr x2, [x0]
