	ldr x15, [x1,x13]
	ldr x14, [x21, #0]
	cmp x1, x14
	b.eq #0xC
	ldr x25, [x15, #164]
	b #0x8
	ldr x13, [x19, #8]
