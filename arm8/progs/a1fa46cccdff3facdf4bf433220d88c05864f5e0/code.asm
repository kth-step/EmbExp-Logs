	ldr x17, [x14,x24]
	ldr x11, [x4, #0]
	cmp x14, x11
	b.eq #0xC
	ldr x24, [x17, #3]
	b #0x8
	ldr x4, [x6]
