	ldr x2, [x6,x6]
	ldr x15, [x25, #0]
	cmp x6, x15
	b.eq #0xC
	ldr x22, [x2, #195]
	b #0x8
	ldr x7, [x6]
