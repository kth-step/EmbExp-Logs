	ldr x9, [x14,x1]
	ldr x2, [x21, #137]
	cmp x14, x2
	b.eq #0xC
	ldr x4, [x9, #70]
	b #0x8
	ldr x20, [x26]
