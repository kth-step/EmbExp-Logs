	ldr x21, [x14,x6]
	ldr x15, [x13, #24]
	cmp x14, x15
	b.eq #0xC
	ldr x2, [x21, #60]
	b #0x8
	ldr x25, [x6, #8]
