	ldr x17, [x6,x25]
	ldr x7, [x26, #0]
	cmp x6, x7
	b.eq #0xC
	ldr x13, [x17, #195]
	b #0x8
	ldr x23, [x20, #16]
