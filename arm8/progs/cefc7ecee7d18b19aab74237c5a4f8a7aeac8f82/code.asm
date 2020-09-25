	ldr x12, [x9,x15]
	ldr x23, [x19, #0]
	cmp x9, x23
	b.eq #0xC
	ldr x5, [x12, #155]
	b #0x8
	ldr x3, [x21]
