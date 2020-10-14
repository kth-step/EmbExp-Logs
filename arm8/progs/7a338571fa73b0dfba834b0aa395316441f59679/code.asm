	ldr x16, [x11,x17]
	ldr x20, [x11, #0]
	cmp x11, x20
	b.eq #0xC
	ldr x8, [x16, #190]
	b #0x8
	ldr x6, [x0, #8]
