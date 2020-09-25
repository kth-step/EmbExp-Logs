	ldr x3, [x23,x0]
	ldr x22, [x16, #0]
	cmp x23, x22
	b.eq #0xC
	ldr x23, [x3, #169]
	b #0x8
	ldr x11, [x3, #8]
