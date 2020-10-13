	ldr x21, [x25,x24]
	ldr x6, [x3, #0]
	cmp x25, x6
	b.eq #0xC
	ldr x22, [x21, #110]
	b #0x8
	ldr x8, [x15, #4]
