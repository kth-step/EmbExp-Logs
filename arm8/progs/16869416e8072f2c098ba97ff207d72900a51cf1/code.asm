	ldr x11, [x3,x16]
	ldr x15, [x26, #218]
	cmp x3, x15
	b.eq #0xC
	ldr x0, [x11, #253]
	b #0x8
	ldr x6, [x11, #16]
