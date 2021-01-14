	ldr x18, [x6,x27]
	ldr x29, [x9, #110]
	cmp x6, x29
	b.eq #0xC
	ldr x11, [x18, #3]
	b #0x8
	ldr x0, [x23, #16]
