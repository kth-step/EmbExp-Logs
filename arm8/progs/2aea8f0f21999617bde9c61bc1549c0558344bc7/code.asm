	ldr x23, [x7,x10]
	ldr x20, [x2, #0]
	cmp x7, x20
	b.eq #0xC
	ldr x3, [x23, #228]
	b #0x8
	ldr x14, [x10, #16]
