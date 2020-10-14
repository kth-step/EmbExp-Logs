	ldr x13, [x20,x22]
	ldr x29, [x17, #0]
	cmp x20, x29
	b.eq #0xC
	ldr x11, [x13, #23]
	b #0x8
	ldr x25, [x7, #8]
