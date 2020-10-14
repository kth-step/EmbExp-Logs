	ldr x10, [x0,x19]
	ldr x13, [x23, #0]
	cmp x0, x13
	b.eq #0xC
	ldr x22, [x10, #116]
	b #0x8
	ldr x29, [x26, #16]
