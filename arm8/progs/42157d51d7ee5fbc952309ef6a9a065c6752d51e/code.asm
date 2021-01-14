	ldr x24, [x14,x25]
	ldr x25, [x1, #182]
	cmp x14, x25
	b.eq #0xC
	ldr x10, [x24, #174]
	b #0x8
	ldr x7, [x22, #8]
