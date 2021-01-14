	ldr x23, [x0,x20]
	ldr x0, [x2, #79]
	cmp x0, x0
	b.eq #0xC
	ldr x5, [x23, #198]
	b #0x8
	ldr x25, [x14, #16]
