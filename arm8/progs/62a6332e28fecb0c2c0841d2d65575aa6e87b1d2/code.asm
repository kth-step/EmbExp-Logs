	ldr x27, [x16,x15]
	ldr x13, [x24, #0]
	cmp x16, x13
	b.eq #0xC
	ldr x22, [x27, #30]
	b #0x8
	ldr x7, [x6, #16]
