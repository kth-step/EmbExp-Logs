	ldr x6, [x10,x7]
	ldr x24, [x20, #76]
	cmp x10, x24
	b.eq #0xC
	ldr x5, [x6, #15]
	b #0x8
	ldr x8, [x27, #16]
