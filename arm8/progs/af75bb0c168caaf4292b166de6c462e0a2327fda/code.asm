	ldr x9, [x2,x20]
	ldr x15, [x16, #0]
	cmp x2, x15
	b.eq #0xC
	ldr x20, [x9, #47]
	b #0x8
	ldr x8, [x4, #4]
