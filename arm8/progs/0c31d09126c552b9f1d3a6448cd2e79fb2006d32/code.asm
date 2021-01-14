	ldr x20, [x7,x29]
	ldr x16, [x25, #110]
	cmp x7, x16
	b.eq #0xC
	ldr x21, [x20, #90]
	b #0x8
	ldr x8, [x8, #4]
