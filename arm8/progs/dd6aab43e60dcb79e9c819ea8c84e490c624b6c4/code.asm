	ldr x3, [x0,x25]
	ldr x14, [x20, #0]
	cmp x0, x14
	b.eq #0xC
	ldr x5, [x3, #28]
	b #0x8
	ldr x17, [x22, #16]
