	ldr x3, [x24,x0]
	ldr x15, [x24, #0]
	cmp x24, x15
	b.eq #0xC
	ldr x12, [x3, #178]
	b #0x8
	ldr x4, [x14]
