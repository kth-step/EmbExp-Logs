	ldr x7, [x1,x14]
	ldr x12, [x2, #0]
	cmp x1, x12
	b.eq #0xC
	ldr x17, [x7, #7]
	b #0x8
	ldr x21, [x27, #8]
