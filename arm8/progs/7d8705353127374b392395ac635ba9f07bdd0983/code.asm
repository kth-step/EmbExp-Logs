	ldr x9, [x13,x6]
	ldr x26, [x8, #0]
	cmp x13, x26
	b.eq #0xC
	ldr x21, [x9, #187]
	b #0x8
	ldr x4, [x28, #8]
