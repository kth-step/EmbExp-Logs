	ldr x2, [x20,x4]
	ldr x4, [x1, #0]
	cmp x20, x4
	b.eq #0xC
	ldr x26, [x2, #137]
	b #0x8
	ldr x4, [x16, #4]
