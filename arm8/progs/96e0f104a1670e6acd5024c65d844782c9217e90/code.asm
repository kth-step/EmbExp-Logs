	ldr x27, [x9,x15]
	ldr x15, [x8, #0]
	cmp x9, x15
	b.eq #0xC
	ldr x23, [x27, #46]
	b #0x8
	ldr x2, [x29, #8]
