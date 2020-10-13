	ldr x17, [x2,x28]
	ldr x12, [x5, #0]
	cmp x2, x12
	b.eq #0xC
	ldr x10, [x17, #156]
	b #0x8
	ldr x1, [x29]
