	ldr x2, [x4,x15]
	ldr x15, [x6, #28]
	cmp x4, x15
	b.eq #0xC
	ldr x13, [x2, #11]
	b #0x8
	ldr x3, [x5]
