	ldr x3, [x15,x6]
	ldr x10, [x17, #0]
	cmp x15, x10
	b.eq #0xC
	ldr x16, [x3, #31]
	b #0x8
	ldr x29, [x13]
