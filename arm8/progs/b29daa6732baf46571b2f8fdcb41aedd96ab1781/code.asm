	ldr x8, [x23,x16]
	ldr x13, [x5, #0]
	cmp x23, x13
	b.eq #0xC
	ldr x22, [x8, #154]
	b #0x8
	ldr x6, [x13]
