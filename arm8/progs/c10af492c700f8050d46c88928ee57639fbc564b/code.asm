	ldr x7, [x20,x4]
	ldr x2, [x26, #0]
	cmp x20, x2
	b.eq #0xC
	ldr x23, [x7, #46]
	b #0x8
	ldr x4, [x11, #16]
