	ldr x28, [x24,x2]
	ldr x6, [x12, #1]
	cmp x24, x6
	b.eq #0xC
	ldr x8, [x28, #19]
	b #0x8
	ldr x17, [x7]
