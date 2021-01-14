	ldr x5, [x25,x10]
	ldr x18, [x11, #11]
	cmp x25, x18
	b.eq #0xC
	ldr x28, [x5, #169]
	b #0x8
	ldr x13, [x0, #8]
