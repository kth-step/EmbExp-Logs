	ldr x2, [x28,x18]
	ldr x26, [x17, #0]
	cmp x28, x26
	b.eq #0xC
	ldr x13, [x2, #195]
	b #0x8
	ldr x16, [x23, #8]
