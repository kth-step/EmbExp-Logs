	ldr x3, [x2,x19]
	ldr x17, [x16, #0]
	cmp x2, x17
	b.eq #0xC
	ldr x28, [x3, #207]
	b #0x8
	ldr x7, [x24, #8]
