	ldr x13, [x17,x24]
	ldr x7, [x3, #0]
	cmp x17, x7
	b.eq #0xC
	ldr x22, [x13, #132]
	b #0x8
	ldr x22, [x6, #4]
