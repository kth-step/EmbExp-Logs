	ldr x14, [x3,x4]
	ldr x6, [x16, #0]
	cmp x3, x6
	b.eq #0xC
	ldr x20, [x14, #110]
	b #0x8
	ldr x0, [x3, #16]
