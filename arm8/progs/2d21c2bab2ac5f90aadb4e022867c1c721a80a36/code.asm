	ldr x15, [x11,x29]
	ldr x1, [x11, #0]
	cmp x11, x1
	b.eq #0xC
	ldr x23, [x15, #211]
	b #0x8
	ldr x27, [x9]
