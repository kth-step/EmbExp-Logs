	ldr x23, [x10,x9]
	ldr x19, [x15, #110]
	cmp x10, x19
	b.eq #0xC
	ldr x6, [x23, #245]
	b #0x8
	ldr x5, [x9, #4]
