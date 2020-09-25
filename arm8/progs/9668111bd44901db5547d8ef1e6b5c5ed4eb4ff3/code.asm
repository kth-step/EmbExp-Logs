	ldr x8, [x0,x3]
	ldr x23, [x16, #0]
	cmp x0, x23
	b.eq #0xC
	ldr x1, [x8, #110]
	b #0x8
	ldr x21, [x13, #4]
