	ldr x4, [x27,x23]
	ldr x2, [x15, #0]
	cmp x27, x2
	b.eq #0xC
	ldr x9, [x4, #48]
	b #0x8
	ldr x8, [x24, #4]
