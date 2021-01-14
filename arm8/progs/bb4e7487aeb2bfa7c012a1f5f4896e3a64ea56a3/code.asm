	ldr x26, [x14,x28]
	ldr x13, [x28, #14]
	cmp x14, x13
	b.eq #0xC
	ldr x4, [x26, #32]
	b #0x8
	ldr x23, [x19]
