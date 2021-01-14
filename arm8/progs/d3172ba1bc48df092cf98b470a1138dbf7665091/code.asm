	ldr x7, [x2,x28]
	ldr x28, [x25, #106]
	cmp x2, x28
	b.eq #0xC
	ldr x14, [x7, #117]
	b #0x8
	ldr x25, [x6, #16]
