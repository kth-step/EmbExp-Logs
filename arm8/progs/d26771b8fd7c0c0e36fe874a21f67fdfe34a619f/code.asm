	ldr x22, [x26,x26]
	ldr x2, [x5, #0]
	cmp x26, x2
	b.eq #0xC
	ldr x10, [x22, #211]
	b #0x8
	ldr x11, [x18]
