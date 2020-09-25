	ldr x17, [x21,x3]
	ldr x22, [x20, #0]
	cmp x21, x22
	b.eq #0xC
	ldr x6, [x17, #83]
	b #0x8
	ldr x3, [x7, #8]
