	ldr x21, [x17,x29]
	ldr x5, [x6, #0]
	cmp x17, x5
	b.eq #0xC
	ldr x19, [x21, #36]
	b #0x8
	ldr x0, [x19]
