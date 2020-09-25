	ldr x10, [x14,x16]
	ldr x27, [x21, #0]
	cmp x14, x27
	b.eq #0xC
	ldr x23, [x10, #27]
	b #0x8
	ldr x6, [x29]
