	ldr x2, [x26,x7]
	ldr x4, [x28, #0]
	cmp x26, x4
	b.eq #0xC
	ldr x25, [x2, #96]
	b #0x8
	ldr x22, [x6, #16]
