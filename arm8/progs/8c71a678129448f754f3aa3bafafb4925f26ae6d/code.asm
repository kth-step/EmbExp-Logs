	ldr x14, [x11,x23]
	ldr x6, [x21, #0]
	cmp x11, x6
	b.eq #0xC
	ldr x22, [x14, #1]
	b #0x8
	ldr x22, [x25, #8]
