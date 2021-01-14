	ldr x9, [x21,x27]
	ldr x13, [x8, #215]
	cmp x21, x13
	b.eq #0xC
	ldr x10, [x9, #145]
	b #0x8
	ldr x27, [x5, #8]
