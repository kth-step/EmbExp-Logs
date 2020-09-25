	ldr x15, [x20,x10]
	ldr x13, [x25, #0]
	cmp x20, x13
	b.eq #0xC
	ldr x9, [x15, #120]
	b #0x8
	ldr x23, [x28, #4]
