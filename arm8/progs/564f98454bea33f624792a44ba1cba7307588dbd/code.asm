	ldr x20, [x24,x6]
	ldr x15, [x19, #0]
	cmp x24, x15
	b.eq #0xC
	ldr x14, [x20, #19]
	b #0x8
	ldr x1, [x25, #8]
