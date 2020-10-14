	ldr x14, [x13,x20]
	ldr x16, [x21, #0]
	cmp x13, x16
	b.eq #0xC
	ldr x0, [x14, #27]
	b #0x8
	ldr x14, [x26, #16]
