	ldr x3, [x7,x25]
	ldr x25, [x11, #0]
	cmp x7, x25
	b.eq #0xC
	ldr x14, [x3, #58]
	b #0x8
	ldr x23, [x14]
