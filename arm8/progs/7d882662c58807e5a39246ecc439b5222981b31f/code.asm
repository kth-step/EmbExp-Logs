	ldr x9, [x2,x3]
	ldr x11, [x23, #0]
	cmp x2, x11
	b.eq #0xC
	ldr x21, [x9, #59]
	b #0x8
	ldr x28, [x20]
