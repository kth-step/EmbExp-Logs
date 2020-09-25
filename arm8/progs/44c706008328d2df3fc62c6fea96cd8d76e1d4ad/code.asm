	ldr x11, [x2,x25]
	ldr x24, [x10, #0]
	cmp x2, x24
	b.eq #0xC
	ldr x21, [x11, #208]
	b #0x8
	ldr x3, [x17]
