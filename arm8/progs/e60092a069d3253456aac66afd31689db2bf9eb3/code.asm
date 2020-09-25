	ldr x22, [x10,x15]
	ldr x17, [x10, #0]
	cmp x10, x17
	b.eq #0xC
	ldr x20, [x22, #76]
	b #0x8
	ldr x13, [x27, #16]
