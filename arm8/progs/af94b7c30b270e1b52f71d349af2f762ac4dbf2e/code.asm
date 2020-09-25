	ldr x7, [x11,x13]
	ldr x19, [x17, #0]
	cmp x11, x19
	b.eq #0xC
	ldr x21, [x7, #159]
	b #0x8
	ldr x1, [x22]
