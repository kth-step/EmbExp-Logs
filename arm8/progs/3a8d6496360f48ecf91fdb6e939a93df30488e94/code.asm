	ldr x5, [x22,x4]
	ldr x8, [x17, #0]
	cmp x22, x8
	b.eq #0xC
	ldr x2, [x5, #54]
	b #0x8
	ldr x13, [x13, #16]
