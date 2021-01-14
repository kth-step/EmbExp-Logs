	ldr x15, [x17,x23]
	ldr x12, [x4, #106]
	cmp x17, x12
	b.eq #0xC
	ldr x7, [x15, #61]
	b #0x8
	ldr x3, [x28, #8]
