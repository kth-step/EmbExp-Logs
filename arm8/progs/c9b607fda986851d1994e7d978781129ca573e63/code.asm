	ldr x15, [x28,x13]
	ldr x29, [x27, #0]
	cmp x28, x29
	b.eq #0xC
	ldr x14, [x15, #195]
	b #0x8
	ldr x9, [x9, #8]
