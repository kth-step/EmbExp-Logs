	ldr x13, [x14,x1]
	ldr x4, [x13, #32]
	cmp x14, x4
	b.eq #0xC
	ldr x3, [x13, #119]
	b #0x8
	ldr x15, [x14, #8]
