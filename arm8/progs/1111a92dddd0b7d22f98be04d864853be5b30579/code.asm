	ldr x6, [x2,x17]
	ldr x18, [x14, #0]
	cmp x2, x18
	b.eq #0xC
	ldr x5, [x6, #228]
	b #0x8
	ldr x22, [x0]
