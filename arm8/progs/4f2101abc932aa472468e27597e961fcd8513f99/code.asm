	ldr x7, [x21,x8]
	ldr x29, [x25, #58]
	cmp x21, x29
	b.eq #0xC
	ldr x5, [x7, #96]
	b #0x8
	ldr x17, [x21, #8]
