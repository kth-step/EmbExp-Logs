	ldr x21, [x20,x4]
	ldr x14, [x10, #0]
	cmp x20, x14
	b.eq #0xC
	ldr x3, [x21, #206]
	b #0x8
	ldr x29, [x11]
