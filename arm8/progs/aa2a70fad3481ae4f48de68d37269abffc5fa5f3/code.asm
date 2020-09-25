	ldr x11, [x13,x24]
	ldr x2, [x6, #0]
	cmp x13, x2
	b.eq #0xC
	ldr x8, [x11, #239]
	b #0x8
	ldr x1, [x14]
