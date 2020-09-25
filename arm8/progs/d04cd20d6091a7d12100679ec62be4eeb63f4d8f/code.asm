	ldr x11, [x3,x15]
	ldr x28, [x7, #0]
	cmp x3, x28
	b.eq #0xC
	ldr x5, [x11, #180]
	b #0x8
	ldr x26, [x25, #8]
