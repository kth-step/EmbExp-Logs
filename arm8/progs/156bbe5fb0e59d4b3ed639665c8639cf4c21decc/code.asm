	ldr x8, [x28,x19]
	ldr x13, [x23, #0]
	cmp x28, x13
	b.eq #0xC
	ldr x15, [x8, #115]
	b #0x8
	ldr x28, [x0, #8]
