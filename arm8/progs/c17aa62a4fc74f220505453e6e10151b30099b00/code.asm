	ldr x3, [x1,x4]
	ldr x25, [x18, #0]
	cmp x1, x25
	b.eq #0xC
	ldr x17, [x3, #14]
	b #0x8
	ldr x9, [x2, #8]
