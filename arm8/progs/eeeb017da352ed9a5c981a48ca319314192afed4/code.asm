	ldr x16, [x4,x23]
	ldr x5, [x13, #0]
	cmp x4, x5
	b.eq #0xC
	ldr x0, [x16, #249]
	b #0x8
	ldr x0, [x9, #8]
