	ldr x7, [x27,x27]
	ldr x2, [x5, #211]
	cmp x27, x2
	b.eq #0xC
	ldr x12, [x7, #27]
	b #0x8
	ldr x22, [x26, #16]
