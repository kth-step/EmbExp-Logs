	ldr x8, [x6,x20]
	ldr x25, [x9, #177]
	cmp x6, x25
	b.eq #0xC
	ldr x18, [x8, #145]
	b #0x8
	ldr x4, [x10]
