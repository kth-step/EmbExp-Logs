	ldr x20, [x1,x12]
	ldr x13, [x1, #116]
	cmp x1, x13
	b.eq #0xC
	ldr x5, [x20, #203]
	b #0x8
	ldr x0, [x17, #4]
