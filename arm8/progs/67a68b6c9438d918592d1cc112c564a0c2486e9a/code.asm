	ldr x11, [x14,x21]
	ldr x0, [x6, #0]
	cmp x14, x0
	b.eq #0xC
	ldr x7, [x11, #129]
	b #0x8
	ldr x10, [x23, #16]
