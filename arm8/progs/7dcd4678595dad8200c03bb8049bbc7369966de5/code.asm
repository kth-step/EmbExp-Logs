	ldr x2, [x4,x13]
	ldr x25, [x14, #0]
	cmp x4, x25
	b.eq #0xC
	ldr x4, [x2, #49]
	b #0x8
	ldr x0, [x28, #8]
