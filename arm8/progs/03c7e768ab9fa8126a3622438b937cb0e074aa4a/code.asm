	ldr x3, [x8,x28]
	ldr x6, [x7, #0]
	cmp x8, x6
	b.eq #0xC
	ldr x11, [x3, #46]
	b #0x8
	ldr x14, [x24, #16]
