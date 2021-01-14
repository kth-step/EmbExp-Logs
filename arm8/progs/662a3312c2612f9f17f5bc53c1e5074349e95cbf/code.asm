	ldr x5, [x3,x14]
	ldr x28, [x13, #61]
	cmp x3, x28
	b.eq #0xC
	ldr x14, [x5, #249]
	b #0x8
	ldr x4, [x9, #8]
