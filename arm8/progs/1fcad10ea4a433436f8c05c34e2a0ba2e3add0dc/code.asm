	ldr x8, [x16,x26]
	ldr x17, [x1, #96]
	cmp x16, x17
	b.eq #0xC
	ldr x16, [x8, #65]
	b #0x8
	ldr x7, [x26, #16]
