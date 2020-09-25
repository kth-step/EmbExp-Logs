	ldr x20, [x5,x15]
	ldr x12, [x2, #0]
	cmp x5, x12
	b.eq #0xC
	ldr x13, [x20, #195]
	b #0x8
	ldr x12, [x20, #16]
