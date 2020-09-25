	ldr x5, [x23,x15]
	ldr x2, [x21, #0]
	cmp x23, x2
	b.eq #0xC
	ldr x17, [x5, #186]
	b #0x8
	ldr x22, [x0, #16]
