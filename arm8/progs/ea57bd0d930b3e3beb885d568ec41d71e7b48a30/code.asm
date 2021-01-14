	ldr x21, [x17,x0]
	ldr x3, [x15, #116]
	cmp x17, x3
	b.eq #0xC
	ldr x23, [x21, #142]
	b #0x8
	ldr x11, [x17, #4]
