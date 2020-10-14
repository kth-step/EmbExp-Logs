	ldr x2, [x13,x22]
	ldr x12, [x0, #0]
	cmp x13, x12
	b.eq #0xC
	ldr x6, [x2, #190]
	b #0x8
	ldr x5, [x19]
