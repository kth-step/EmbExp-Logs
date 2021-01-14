	ldr x14, [x9,x7]
	ldr x5, [x24, #176]
	cmp x9, x5
	b.eq #0xC
	ldr x10, [x14, #117]
	b #0x8
	ldr x0, [x16]
