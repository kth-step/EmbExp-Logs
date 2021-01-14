	ldr x29, [x11,x16]
	ldr x14, [x3, #77]
	cmp x11, x14
	b.eq #0xC
	ldr x3, [x29, #28]
	b #0x8
	ldr x26, [x22, #8]
