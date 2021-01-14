	ldr x4, [x27,x6]
	ldr x25, [x5, #95]
	cmp x27, x25
	b.eq #0xC
	ldr x29, [x4, #76]
	b #0x8
	ldr x9, [x3, #16]
