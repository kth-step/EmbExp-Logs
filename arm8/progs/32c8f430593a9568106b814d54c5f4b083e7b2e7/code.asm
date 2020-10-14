	ldr x8, [x1,x13]
	ldr x23, [x22, #0]
	cmp x1, x23
	b.eq #0xC
	ldr x9, [x8, #15]
	b #0x8
	ldr x7, [x5]
