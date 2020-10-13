	ldr x11, [x28,x20]
	ldr x9, [x27, #0]
	cmp x28, x9
	b.eq #0xC
	ldr x5, [x11, #46]
	b #0x8
	ldr x7, [x5, #16]
