	ldr x23, [x14,x21]
	ldr x6, [x5, #228]
	cmp x14, x6
	b.eq #0xC
	ldr x11, [x23, #242]
	b #0x8
	ldr x25, [x25, #4]
