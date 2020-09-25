	ldr x10, [x23,x7]
	ldr x23, [x2, #0]
	cmp x23, x23
	b.eq #0xC
	ldr x18, [x10, #194]
	b #0x8
	ldr x22, [x15]
