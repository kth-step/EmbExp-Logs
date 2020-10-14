	ldr x4, [x14,x8]
	ldr x13, [x10, #0]
	cmp x14, x13
	b.eq #0xC
	ldr x28, [x4, #7]
	b #0x8
	ldr x25, [x11, #16]
