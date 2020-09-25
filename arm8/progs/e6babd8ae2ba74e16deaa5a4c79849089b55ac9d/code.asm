	ldr x28, [x24,x19]
	ldr x23, [x1, #0]
	cmp x24, x23
	b.eq #0xC
	ldr x22, [x28, #14]
	b #0x8
	ldr x16, [x0, #8]
