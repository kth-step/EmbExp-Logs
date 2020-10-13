	ldr x18, [x16,x26]
	ldr x7, [x2, #0]
	cmp x16, x7
	b.eq #0xC
	ldr x14, [x18, #36]
	b #0x8
	ldr x11, [x19]
