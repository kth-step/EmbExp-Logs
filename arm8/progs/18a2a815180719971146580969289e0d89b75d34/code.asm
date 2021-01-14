	ldr x20, [x13,x25]
	ldr x16, [x3, #10]
	cmp x13, x16
	b.eq #0xC
	ldr x3, [x20, #83]
	b #0x8
	ldr x0, [x6, #8]
