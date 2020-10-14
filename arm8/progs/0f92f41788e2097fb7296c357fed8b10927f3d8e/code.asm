	ldr x2, [x17,x9]
	ldr x4, [x21, #0]
	cmp x17, x4
	b.eq #0xC
	ldr x20, [x2, #186]
	b #0x8
	ldr x27, [x14, #8]
