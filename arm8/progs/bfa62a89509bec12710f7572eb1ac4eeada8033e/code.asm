	ldr x10, [x1,x1]
	ldr x8, [x26, #0]
	cmp x1, x8
	b.eq #0xC
	ldr x11, [x10, #206]
	b #0x8
	ldr x4, [x22, #4]
