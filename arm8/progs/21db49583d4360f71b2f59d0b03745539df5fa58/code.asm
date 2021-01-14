	ldr x19, [x24,x1]
	ldr x14, [x28, #49]
	cmp x24, x14
	b.eq #0xC
	ldr x6, [x19, #249]
	b #0x8
	ldr x2, [x1, #8]
