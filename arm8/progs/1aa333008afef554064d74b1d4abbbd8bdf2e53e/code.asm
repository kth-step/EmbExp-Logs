	ldr x10, [x26,x19]
	ldr x23, [x13, #0]
	cmp x26, x23
	b.eq #0xC
	ldr x29, [x10, #41]
	b #0x8
	ldr x22, [x3, #4]
