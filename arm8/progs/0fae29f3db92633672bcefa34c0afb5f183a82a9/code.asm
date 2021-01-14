	ldr x16, [x6,x5]
	ldr x2, [x26, #198]
	cmp x6, x2
	b.eq #0xC
	ldr x7, [x16, #235]
	b #0x8
	ldr x28, [x13]
