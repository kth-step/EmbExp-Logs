	ldr x9, [x26,x5]
	ldr x8, [x10, #0]
	cmp x26, x8
	b.eq #0xC
	ldr x2, [x9, #35]
	b #0x8
	ldr x9, [x26, #4]
