	ldr x2, [x24,x0]
	ldr x28, [x0, #0]
	cmp x24, x28
	b.eq #0xC
	ldr x14, [x2, #194]
	b #0x8
	ldr x13, [x22, #16]
