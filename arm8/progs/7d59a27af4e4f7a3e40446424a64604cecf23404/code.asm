	ldr x9, [x6,x3]
	ldr x13, [x14, #0]
	cmp x6, x13
	b.eq #0xC
	ldr x8, [x9, #70]
	b #0x8
	ldr x1, [x28, #16]
