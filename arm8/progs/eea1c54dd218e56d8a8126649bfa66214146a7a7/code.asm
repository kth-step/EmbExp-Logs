	ldr x14, [x24,x21]
	ldr x13, [x3, #0]
	cmp x24, x13
	b.eq #0xC
	ldr x7, [x14, #68]
	b #0x8
	ldr x2, [x22, #16]
