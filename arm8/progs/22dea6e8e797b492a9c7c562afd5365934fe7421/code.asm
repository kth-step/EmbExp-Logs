	ldr x14, [x2,x0]
	ldr x21, [x14, #52]
	cmp x2, x21
	b.eq #0xC
	ldr x15, [x14, #77]
	b #0x8
	ldr x28, [x26]
