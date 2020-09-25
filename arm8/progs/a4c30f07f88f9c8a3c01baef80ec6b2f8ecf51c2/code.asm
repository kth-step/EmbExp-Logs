	ldr x9, [x13,x17]
	ldr x25, [x29, #0]
	cmp x13, x25
	b.eq #0xC
	ldr x8, [x9, #76]
	b #0x8
	ldr x26, [x10]
