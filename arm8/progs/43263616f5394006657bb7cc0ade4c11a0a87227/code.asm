	ldr x28, [x24,x1]
	ldr x17, [x9, #61]
	cmp x24, x17
	b.eq #0xC
	ldr x2, [x28, #68]
	b #0x8
	ldr x0, [x28]
