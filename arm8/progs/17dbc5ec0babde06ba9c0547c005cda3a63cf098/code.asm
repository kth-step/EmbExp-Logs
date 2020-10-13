	ldr x22, [x29,x17]
	ldr x14, [x27, #0]
	cmp x29, x14
	b.eq #0xC
	ldr x0, [x22, #211]
	b #0x8
	ldr x8, [x23, #8]
