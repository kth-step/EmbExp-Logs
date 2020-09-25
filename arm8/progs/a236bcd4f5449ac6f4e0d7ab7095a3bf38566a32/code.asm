	ldr x13, [x14,x3]
	ldr x2, [x19, #0]
	cmp x14, x2
	b.eq #0xC
	ldr x6, [x13, #83]
	b #0x8
	ldr x6, [x9]
