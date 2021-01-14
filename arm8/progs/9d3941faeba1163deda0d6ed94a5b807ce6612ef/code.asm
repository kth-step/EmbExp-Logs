	ldr x3, [x16,x20]
	ldr x8, [x0, #117]
	cmp x16, x8
	b.eq #0xC
	ldr x14, [x3, #31]
	b #0x8
	ldr x29, [x25, #16]
