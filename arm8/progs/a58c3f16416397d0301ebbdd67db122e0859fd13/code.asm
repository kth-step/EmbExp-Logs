	ldr x17, [x11,x4]
	ldr x14, [x4, #0]
	cmp x11, x14
	b.eq #0xC
	ldr x10, [x17, #167]
	b #0x8
	ldr x21, [x10, #4]
