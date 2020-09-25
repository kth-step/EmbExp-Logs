	ldr x5, [x13,x20]
	ldr x4, [x16, #0]
	cmp x13, x4
	b.eq #0xC
	ldr x11, [x5, #78]
	b #0x8
	ldr x2, [x22, #16]
