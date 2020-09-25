	ldr x11, [x28,x29]
	ldr x16, [x13, #0]
	cmp x28, x16
	b.eq #0xC
	ldr x19, [x11, #211]
	b #0x8
	ldr x20, [x3]
