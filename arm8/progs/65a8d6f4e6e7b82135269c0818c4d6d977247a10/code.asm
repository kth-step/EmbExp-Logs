	ldr x9, [x10,x25]
	ldr x14, [x10, #0]
	cmp x10, x14
	b.eq #0xC
	ldr x29, [x9, #41]
	b #0x8
	ldr x29, [x28]
