	ldr x23, [x0,x25]
	ldr x22, [x23, #0]
	cmp x0, x22
	b.eq #0xC
	ldr x20, [x23, #8]
	b #0x8
	ldr x17, [x3, #8]
