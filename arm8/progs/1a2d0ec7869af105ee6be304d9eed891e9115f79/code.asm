	ldr x26, [x6,x18]
	ldr x7, [x21, #117]
	cmp x6, x7
	b.eq #0xC
	ldr x15, [x26, #76]
	b #0x8
	ldr x5, [x22]
