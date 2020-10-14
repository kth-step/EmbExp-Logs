	ldr x8, [x7,x21]
	ldr x2, [x9, #0]
	cmp x7, x2
	b.eq #0xC
	ldr x0, [x8, #51]
	b #0x8
	ldr x7, [x11, #8]
