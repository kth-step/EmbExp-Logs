	ldr x4, [x10,x26]
	ldr x14, [x8, #0]
	cmp x10, x14
	b.eq #0xC
	ldr x13, [x4, #152]
	b #0x8
	ldr x20, [x26, #4]
