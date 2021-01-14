	ldr x8, [x12,x23]
	ldr x18, [x13, #97]
	cmp x12, x18
	b.eq #0xC
	ldr x10, [x8, #195]
	b #0x8
	ldr x0, [x7]
