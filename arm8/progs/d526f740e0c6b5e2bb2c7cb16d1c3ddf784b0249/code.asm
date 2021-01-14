	ldr x26, [x19,x25]
	ldr x21, [x2, #71]
	cmp x19, x21
	b.eq #0xC
	ldr x3, [x26, #155]
	b #0x8
	ldr x6, [x1, #16]
