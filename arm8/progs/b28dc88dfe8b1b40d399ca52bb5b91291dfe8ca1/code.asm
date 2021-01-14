	ldr x8, [x0,x21]
	ldr x2, [x14, #105]
	cmp x0, x2
	b.eq #0xC
	ldr x10, [x8, #63]
	b #0x8
	ldr x20, [x20]
