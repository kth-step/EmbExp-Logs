	ldr x17, [x28,x25]
	ldr x3, [x25, #0]
	cmp x28, x3
	b.eq #0xC
	ldr x0, [x17, #60]
	b #0x8
	ldr x13, [x4, #16]
