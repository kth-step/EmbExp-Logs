	ldr x26, [x11,x7]
	ldr x5, [x0, #0]
	cmp x11, x5
	b.eq #0xC
	ldr x23, [x26, #193]
	b #0x8
	ldr x25, [x21, #16]
