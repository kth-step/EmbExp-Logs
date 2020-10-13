	ldr x12, [x10,x0]
	ldr x4, [x13, #0]
	cmp x10, x4
	b.eq #0xC
	ldr x10, [x12, #76]
	b #0x8
	ldr x25, [x1]
