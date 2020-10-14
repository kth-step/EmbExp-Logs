	ldr x9, [x6,x2]
	ldr x28, [x7, #0]
	cmp x6, x28
	b.eq #0xC
	ldr x25, [x9, #164]
	b #0x8
	ldr x17, [x21, #16]
