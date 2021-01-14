	ldr x10, [x28,x23]
	ldr x20, [x10, #76]
	cmp x28, x20
	b.eq #0xC
	ldr x28, [x10, #75]
	b #0x8
	ldr x21, [x21]
