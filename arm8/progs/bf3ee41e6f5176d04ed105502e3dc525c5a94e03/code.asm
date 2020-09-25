	ldr x21, [x25,x13]
	ldr x11, [x17, #0]
	cmp x25, x11
	b.eq #0xC
	ldr x2, [x21, #111]
	b #0x8
	ldr x15, [x12, #16]
