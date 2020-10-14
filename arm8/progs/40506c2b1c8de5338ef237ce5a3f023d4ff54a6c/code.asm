	ldr x24, [x12,x25]
	ldr x3, [x21, #0]
	cmp x12, x3
	b.eq #0xC
	ldr x4, [x24, #195]
	b #0x8
	ldr x5, [x11]
