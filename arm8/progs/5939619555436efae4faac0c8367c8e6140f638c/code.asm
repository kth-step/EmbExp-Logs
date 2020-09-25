	ldr x17, [x15,x2]
	ldr x25, [x16, #0]
	cmp x15, x25
	b.eq #0xC
	ldr x20, [x17, #31]
	b #0x8
	ldr x2, [x6, #4]
