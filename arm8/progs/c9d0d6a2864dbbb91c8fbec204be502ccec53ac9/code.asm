	ldr x4, [x29,x5]
	ldr x3, [x26, #76]
	cmp x29, x3
	b.eq #0xC
	ldr x11, [x4, #167]
	b #0x8
	ldr x10, [x29, #4]
