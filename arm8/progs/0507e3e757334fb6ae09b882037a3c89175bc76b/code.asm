	ldr x3, [x8,x28]
	ldr x13, [x20, #226]
	cmp x8, x13
	b.eq #0xC
	ldr x21, [x3, #155]
	b #0x8
	ldr x2, [x22, #4]
