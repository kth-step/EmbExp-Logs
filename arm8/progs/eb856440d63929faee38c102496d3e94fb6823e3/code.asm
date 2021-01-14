	ldr x14, [x13,x19]
	ldr x3, [x8, #117]
	cmp x13, x3
	b.eq #0xC
	ldr x21, [x14, #2]
	b #0x8
	ldr x20, [x24, #8]
