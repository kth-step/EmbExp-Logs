	ldr x22, [x5,x14]
	ldr x14, [x12, #0]
	cmp x5, x14
	b.eq #0xC
	ldr x4, [x22, #47]
	b #0x8
	ldr x21, [x0, #4]
