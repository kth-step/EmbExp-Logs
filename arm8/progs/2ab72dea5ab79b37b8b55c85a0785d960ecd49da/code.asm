	ldr x9, [x2,x10]
	ldr x12, [x8, #0]
	cmp x2, x12
	b.eq #0xC
	ldr x21, [x9, #154]
	b #0x8
	ldr x20, [x15]
