	ldr x8, [x17,x19]
	ldr x6, [x10, #0]
	cmp x17, x6
	b.eq #0xC
	ldr x2, [x8, #15]
	b #0x8
	ldr x20, [x24, #8]
