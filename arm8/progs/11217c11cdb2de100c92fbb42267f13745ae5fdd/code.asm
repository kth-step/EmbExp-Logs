	ldr x20, [x17,x14]
	ldr x2, [x10, #0]
	cmp x17, x2
	b.eq #0xC
	ldr x0, [x20, #26]
	b #0x8
	ldr x5, [x9]
