	ldr x26, [x4,x22]
	ldr x27, [x13, #0]
	cmp x4, x27
	b.eq #0xC
	ldr x1, [x26, #21]
	b #0x8
	ldr x2, [x4, #4]
