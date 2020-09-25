	ldr x6, [x13,x12]
	ldr x27, [x26, #0]
	cmp x13, x27
	b.eq #0xC
	ldr x9, [x6, #3]
	b #0x8
	ldr x10, [x20]
