	ldr x11, [x5,x29]
	ldr x29, [x0, #215]
	cmp x5, x29
	b.eq #0xC
	ldr x13, [x11, #39]
	b #0x8
	ldr x0, [x13, #16]
