	ldr x20, [x5,x13]
	ldr x4, [x3, #169]
	cmp x5, x4
	b.eq #0xC
	ldr x13, [x20, #102]
	b #0x8
	ldr x10, [x22, #4]
