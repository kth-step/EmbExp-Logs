	ldr x17, [x9,x16]
	ldr x13, [x29, #55]
	cmp x9, x13
	b.eq #0xC
	ldr x16, [x17, #117]
	b #0x8
	ldr x3, [x9, #4]
