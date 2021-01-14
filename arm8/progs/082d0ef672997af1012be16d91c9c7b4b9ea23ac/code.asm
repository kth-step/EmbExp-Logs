	ldr x19, [x13,x17]
	ldr x24, [x11, #41]
	cmp x13, x24
	b.eq #0xC
	ldr x16, [x19, #211]
	b #0x8
	ldr x20, [x4, #16]
