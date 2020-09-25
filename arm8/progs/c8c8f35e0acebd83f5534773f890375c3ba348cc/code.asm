	ldr x29, [x17,x7]
	ldr x9, [x0, #0]
	cmp x17, x9
	b.eq #0xC
	ldr x2, [x29, #115]
	b #0x8
	ldr x3, [x15]
