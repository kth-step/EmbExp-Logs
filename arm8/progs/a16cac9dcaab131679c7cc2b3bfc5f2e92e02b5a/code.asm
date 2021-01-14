	ldr x5, [x24,x19]
	ldr x29, [x17, #129]
	cmp x24, x29
	b.eq #0xC
	ldr x8, [x5, #106]
	b #0x8
	ldr x3, [x8, #8]
