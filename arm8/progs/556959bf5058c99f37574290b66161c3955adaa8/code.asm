	ldr x21, [x26,x5]
	ldr x9, [x10, #7]
	cmp x26, x9
	b.eq #0xC
	ldr x25, [x21, #76]
	b #0x8
	ldr x1, [x25, #16]
