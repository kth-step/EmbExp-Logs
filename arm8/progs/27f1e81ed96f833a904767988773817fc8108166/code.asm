	ldr x24, [x17,x0]
	ldr x28, [x9, #151]
	cmp x17, x28
	b.eq #0xC
	ldr x11, [x24, #211]
	b #0x8
	ldr x4, [x15, #4]
