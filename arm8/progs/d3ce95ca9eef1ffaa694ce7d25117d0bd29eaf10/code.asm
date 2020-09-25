	ldr x11, [x20,x23]
	ldr x28, [x8, #0]
	cmp x20, x28
	b.eq #0xC
	ldr x21, [x11, #150]
	b #0x8
	ldr x7, [x14]
