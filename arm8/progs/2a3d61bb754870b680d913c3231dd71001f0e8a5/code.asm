	ldr x3, [x23,x21]
	ldr x11, [x18, #0]
	cmp x23, x11
	b.eq #0xC
	ldr x18, [x3, #62]
	b #0x8
	ldr x6, [x3, #16]
