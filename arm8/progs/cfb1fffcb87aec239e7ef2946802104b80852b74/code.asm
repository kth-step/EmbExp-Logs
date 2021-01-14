	ldr x14, [x15,x11]
	ldr x10, [x11, #4]
	cmp x15, x10
	b.eq #0xC
	ldr x1, [x14, #154]
	b #0x8
	ldr x8, [x24, #4]
