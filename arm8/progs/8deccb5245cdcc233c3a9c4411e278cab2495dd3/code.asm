	ldr x23, [x15,x20]
	ldr x19, [x25, #0]
	cmp x15, x19
	b.eq #0xC
	ldr x29, [x23, #110]
	b #0x8
	ldr x5, [x3, #4]
