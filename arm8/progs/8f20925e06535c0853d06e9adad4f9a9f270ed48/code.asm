	ldr x5, [x26,x0]
	ldr x19, [x2, #0]
	cmp x26, x19
	b.eq #0xC
	ldr x11, [x5, #111]
	b #0x8
	ldr x17, [x2]
