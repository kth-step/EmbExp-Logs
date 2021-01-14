	ldr x8, [x14,x7]
	ldr x28, [x11, #96]
	cmp x14, x28
	b.eq #0xC
	ldr x9, [x8, #58]
	b #0x8
	ldr x26, [x27]
