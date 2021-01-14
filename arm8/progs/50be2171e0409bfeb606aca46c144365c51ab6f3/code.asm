	ldr x6, [x19,x15]
	ldr x13, [x17, #129]
	cmp x19, x13
	b.eq #0xC
	ldr x28, [x6, #75]
	b #0x8
	ldr x1, [x13]
