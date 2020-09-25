	ldr x7, [x13,x26]
	ldr x2, [x11, #0]
	cmp x13, x2
	b.eq #0xC
	ldr x25, [x7, #96]
	b #0x8
	ldr x14, [x27, #16]
