	ldr x10, [x9,x17]
	ldr x12, [x1, #0]
	cmp x9, x12
	b.eq #0xC
	ldr x23, [x10, #63]
	b #0x8
	ldr x21, [x17, #4]
