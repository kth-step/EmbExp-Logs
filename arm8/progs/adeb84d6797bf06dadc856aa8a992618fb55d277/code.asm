	ldr x3, [x28,x10]
	ldr x14, [x12, #0]
	cmp x28, x14
	b.eq #0xC
	ldr x8, [x3, #88]
	b #0x8
	ldr x17, [x13, #8]
