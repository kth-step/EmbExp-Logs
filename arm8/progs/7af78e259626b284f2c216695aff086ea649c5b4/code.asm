	ldr x16, [x0,x14]
	ldr x11, [x24, #0]
	cmp x0, x11
	b.eq #0xC
	ldr x2, [x16, #113]
	b #0x8
	ldr x14, [x4, #4]
