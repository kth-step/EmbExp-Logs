	ldr x17, [x9,x16]
	ldr x3, [x21, #0]
	cmp x9, x3
	b.eq #0xC
	ldr x26, [x17, #54]
	b #0x8
	ldr x5, [x1, #4]
