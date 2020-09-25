	ldr x11, [x3,x14]
	ldr x13, [x22, #0]
	cmp x3, x13
	b.eq #0xC
	ldr x3, [x11, #233]
	b #0x8
	ldr x15, [x7, #8]
