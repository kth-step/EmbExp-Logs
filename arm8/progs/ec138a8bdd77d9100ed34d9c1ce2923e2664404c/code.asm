	ldr x6, [x5,x1]
	ldr x0, [x5, #0]
	cmp x5, x0
	b.eq #0xC
	ldr x16, [x6, #108]
	b #0x8
	ldr x20, [x3, #4]
