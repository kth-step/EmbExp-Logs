	ldr x2, [x16,x28]
	ldr x8, [x10, #232]
	cmp x16, x8
	b.eq #0xC
	ldr x13, [x2, #195]
	b #0x8
	ldr x1, [x11, #16]
