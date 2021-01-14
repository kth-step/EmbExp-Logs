	ldr x2, [x5,x3]
	ldr x19, [x16, #19]
	cmp x5, x19
	b.eq #0xC
	ldr x22, [x2, #46]
	b #0x8
	ldr x18, [x20, #4]
