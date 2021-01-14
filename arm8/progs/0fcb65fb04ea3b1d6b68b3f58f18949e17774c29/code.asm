	ldr x9, [x16,x26]
	ldr x21, [x14, #96]
	cmp x16, x21
	b.eq #0xC
	ldr x29, [x9, #26]
	b #0x8
	ldr x16, [x1]
