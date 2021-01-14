	ldr x11, [x2,x5]
	ldr x19, [x5, #39]
	cmp x2, x19
	b.eq #0xC
	ldr x25, [x11, #252]
	b #0x8
	ldr x0, [x8, #8]
