	ldr x10, [x9,x7]
	ldr x17, [x25, #110]
	cmp x9, x17
	b.eq #0xC
	ldr x16, [x10, #237]
	b #0x8
	ldr x8, [x9]
