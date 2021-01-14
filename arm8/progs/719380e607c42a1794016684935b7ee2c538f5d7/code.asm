	ldr x11, [x24,x29]
	ldr x28, [x1, #87]
	cmp x24, x28
	b.eq #0xC
	ldr x9, [x11, #63]
	b #0x8
	ldr x2, [x14]
