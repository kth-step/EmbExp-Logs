	ldr x24, [x0,x13]
	ldr x1, [x14, #65]
	cmp x0, x1
	b.eq #0xC
	ldr x15, [x24, #228]
	b #0x8
	ldr x7, [x4, #16]
