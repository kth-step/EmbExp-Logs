	ldr x23, [x10,x14]
	ldr x7, [x24, #61]
	cmp x10, x7
	b.eq #0xC
	ldr x12, [x23, #63]
	b #0x8
	ldr x27, [x20, #4]
