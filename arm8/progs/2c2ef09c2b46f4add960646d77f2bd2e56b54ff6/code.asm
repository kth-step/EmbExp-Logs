	ldr x7, [x12,x11]
	ldr x22, [x9, #0]
	cmp x12, x22
	b.eq #0xC
	ldr x26, [x7, #96]
	b #0x8
	ldr x11, [x1, #16]
