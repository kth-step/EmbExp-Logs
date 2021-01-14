	ldr x16, [x11,x3]
	ldr x0, [x9, #195]
	cmp x11, x0
	b.eq #0xC
	ldr x15, [x16, #33]
	b #0x8
	ldr x13, [x3]
