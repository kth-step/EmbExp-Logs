	ldr x10, [x16,x22]
	ldr x11, [x12, #0]
	cmp x16, x11
	b.eq #0xC
	ldr x5, [x10, #228]
	b #0x8
	ldr x16, [x7]
