	ldr x13, [x11,x7]
	ldr x22, [x5, #49]
	cmp x11, x22
	b.eq #0xC
	ldr x12, [x13, #105]
	b #0x8
	ldr x10, [x2]
