	ldr x14, [x13,x26]
	ldr x27, [x15, #0]
	cmp x13, x27
	b.eq #0xC
	ldr x4, [x14, #117]
	b #0x8
	ldr x1, [x14]
