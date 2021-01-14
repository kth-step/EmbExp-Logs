	ldr x12, [x4,x15]
	ldr x4, [x25, #145]
	cmp x4, x4
	b.eq #0xC
	ldr x1, [x12, #132]
	b #0x8
	ldr x2, [x20]
