	ldr x2, [x24,x25]
	ldr x22, [x21, #0]
	cmp x24, x22
	b.eq #0xC
	ldr x23, [x2, #34]
	b #0x8
	ldr x2, [x5, #8]
