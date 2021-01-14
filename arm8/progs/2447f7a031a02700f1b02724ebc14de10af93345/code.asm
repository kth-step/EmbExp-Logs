	ldr x17, [x28,x14]
	ldr x10, [x11, #138]
	cmp x28, x10
	b.eq #0xC
	ldr x28, [x17, #229]
	b #0x8
	ldr x24, [x10, #4]
