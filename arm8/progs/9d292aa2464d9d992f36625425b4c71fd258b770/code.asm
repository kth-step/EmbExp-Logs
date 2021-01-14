	ldr x5, [x23,x17]
	ldr x0, [x29, #110]
	cmp x23, x0
	b.eq #0xC
	ldr x3, [x5, #221]
	b #0x8
	ldr x8, [x11, #16]
