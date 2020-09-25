	ldr x10, [x2,x11]
	ldr x16, [x0, #0]
	cmp x2, x16
	b.eq #0xC
	ldr x17, [x10, #184]
	b #0x8
	ldr x25, [x27]
