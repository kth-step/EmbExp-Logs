	ldr x17, [x14,x9]
	ldr x8, [x5, #110]
	cmp x14, x8
	b.eq #0xC
	ldr x5, [x17, #163]
	b #0x8
	ldr x4, [x7]
