	ldr x11, [x1,x4]
	ldr x23, [x5, #16]
	cmp x1, x23
	b.eq #0xC
	ldr x8, [x11, #24]
	b #0x8
	ldr x29, [x19]
