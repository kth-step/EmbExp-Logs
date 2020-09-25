	ldr x8, [x4,x1]
	ldr x13, [x17, #0]
	cmp x4, x13
	b.eq #0xC
	ldr x28, [x8, #9]
	b #0x8
	ldr x23, [x21]
