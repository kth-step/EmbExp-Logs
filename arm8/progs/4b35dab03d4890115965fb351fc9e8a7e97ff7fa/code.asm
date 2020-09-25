	ldr x24, [x4,x4]
	ldr x14, [x10, #0]
	cmp x4, x14
	b.eq #0xC
	ldr x7, [x24, #151]
	b #0x8
	ldr x20, [x6, #4]
