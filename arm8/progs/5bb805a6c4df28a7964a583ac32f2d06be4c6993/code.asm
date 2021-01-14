	ldr x24, [x20,x15]
	ldr x5, [x19, #106]
	cmp x20, x5
	b.eq #0xC
	ldr x4, [x24, #48]
	b #0x8
	ldr x7, [x2, #16]
