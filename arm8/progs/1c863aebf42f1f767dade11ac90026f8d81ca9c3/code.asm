	ldr x27, [x20,x16]
	ldr x12, [x21, #0]
	cmp x20, x12
	b.eq #0xC
	ldr x9, [x27, #117]
	b #0x8
	ldr x14, [x1, #4]
