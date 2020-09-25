	ldr x15, [x27,x9]
	ldr x4, [x7, #0]
	cmp x27, x4
	b.eq #0xC
	ldr x2, [x15, #76]
	b #0x8
	ldr x23, [x26]
