	ldr x14, [x25,x0]
	ldr x11, [x20, #0]
	cmp x25, x11
	b.eq #0xC
	ldr x19, [x14, #234]
	b #0x8
	ldr x21, [x13, #8]
