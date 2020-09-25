	ldr x7, [x3,x14]
	ldr x12, [x17, #0]
	cmp x3, x12
	b.eq #0xC
	ldr x12, [x7, #43]
	b #0x8
	ldr x15, [x5]
