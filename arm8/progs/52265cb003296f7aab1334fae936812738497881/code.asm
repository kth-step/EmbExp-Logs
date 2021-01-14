	ldr x29, [x14,x15]
	ldr x2, [x14, #154]
	cmp x14, x2
	b.eq #0xC
	ldr x9, [x29, #17]
	b #0x8
	ldr x3, [x23, #8]
