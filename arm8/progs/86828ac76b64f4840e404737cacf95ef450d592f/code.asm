	ldr x20, [x22,x14]
	ldr x0, [x10, #0]
	cmp x22, x0
	b.eq #0xC
	ldr x4, [x20, #54]
	b #0x8
	ldr x16, [x21, #4]
