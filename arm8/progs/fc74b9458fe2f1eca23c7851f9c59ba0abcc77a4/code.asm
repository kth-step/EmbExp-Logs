	ldr x3, [x27,x12]
	ldr x6, [x15, #0]
	cmp x27, x6
	b.eq #0xC
	ldr x7, [x3, #63]
	b #0x8
	ldr x1, [x23, #4]
