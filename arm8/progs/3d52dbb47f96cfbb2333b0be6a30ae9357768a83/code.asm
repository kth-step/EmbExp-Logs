	ldr x13, [x0,x11]
	ldr x23, [x28, #17]
	cmp x0, x23
	b.eq #0xC
	ldr x22, [x13, #66]
	b #0x8
	ldr x7, [x15]
