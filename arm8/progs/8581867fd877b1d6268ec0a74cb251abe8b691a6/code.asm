	ldr x13, [x2,x20]
	ldr x7, [x17, #61]
	cmp x2, x7
	b.eq #0xC
	ldr x12, [x13, #212]
	b #0x8
	ldr x10, [x15, #4]
