	ldr x2, [x0,x25]
	ldr x17, [x15, #0]
	cmp x0, x17
	b.eq #0xC
	ldr x11, [x2, #42]
	b #0x8
	ldr x8, [x25, #4]
