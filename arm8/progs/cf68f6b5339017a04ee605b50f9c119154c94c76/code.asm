	ldr x21, [x14,x26]
	ldr x8, [x10, #0]
	cmp x14, x8
	b.eq #0xC
	ldr x29, [x21, #106]
	b #0x8
	ldr x8, [x7, #16]
