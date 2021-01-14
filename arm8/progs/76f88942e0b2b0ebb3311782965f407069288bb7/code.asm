	ldr x22, [x12,x10]
	ldr x28, [x5, #211]
	cmp x12, x28
	b.eq #0xC
	ldr x28, [x22, #151]
	b #0x8
	ldr x2, [x19]
