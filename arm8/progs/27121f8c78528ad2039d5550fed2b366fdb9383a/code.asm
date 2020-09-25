	ldr x3, [x15,x5]
	ldr x1, [x21, #0]
	cmp x15, x1
	b.eq #0xC
	ldr x25, [x3, #211]
	b #0x8
	ldr x9, [x0, #4]
