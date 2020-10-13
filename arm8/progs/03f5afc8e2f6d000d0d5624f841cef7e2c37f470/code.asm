	ldr x11, [x3,x7]
	ldr x28, [x17, #0]
	cmp x3, x28
	b.eq #0xC
	ldr x26, [x11, #239]
	b #0x8
	ldr x17, [x28]
