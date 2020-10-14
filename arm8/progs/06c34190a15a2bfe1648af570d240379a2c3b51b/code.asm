	ldr x4, [x2,x29]
	ldr x13, [x23, #0]
	cmp x2, x13
	b.eq #0xC
	ldr x22, [x4, #106]
	b #0x8
	ldr x29, [x21, #4]
