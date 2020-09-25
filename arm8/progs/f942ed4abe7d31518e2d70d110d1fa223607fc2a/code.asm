	ldr x10, [x28,x4]
	ldr x5, [x13, #0]
	cmp x28, x5
	b.eq #0xC
	ldr x2, [x10, #157]
	b #0x8
	ldr x16, [x22, #16]
