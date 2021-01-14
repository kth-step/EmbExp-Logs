	ldr x17, [x16,x3]
	ldr x8, [x24, #218]
	cmp x16, x8
	b.eq #0xC
	ldr x0, [x17, #195]
	b #0x8
	ldr x11, [x24]
