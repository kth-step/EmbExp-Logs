	ldr x14, [x21,x7]
	ldr x28, [x14, #154]
	cmp x21, x28
	b.eq #0xC
	ldr x1, [x14, #27]
	b #0x8
	ldr x2, [x15, #4]
