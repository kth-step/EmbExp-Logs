	ldr x24, [x16,x23]
	ldr x21, [x27, #0]
	cmp x16, x21
	b.eq #0xC
	ldr x3, [x24, #145]
	b #0x8
	ldr x4, [x4, #16]
