	ldr x3, [x10,x23]
	ldr x14, [x25, #0]
	cmp x10, x14
	b.eq #0xC
	ldr x13, [x3, #193]
	b #0x8
	ldr x21, [x20]
