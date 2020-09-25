	ldr x17, [x11,x2]
	ldr x28, [x16, #0]
	cmp x11, x28
	b.eq #0xC
	ldr x6, [x17, #216]
	b #0x8
	ldr x29, [x28]
