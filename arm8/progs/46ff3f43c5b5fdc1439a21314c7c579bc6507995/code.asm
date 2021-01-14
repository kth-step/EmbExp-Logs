	ldr x17, [x10,x15]
	ldr x5, [x13, #23]
	cmp x10, x5
	b.eq #0xC
	ldr x22, [x17, #148]
	b #0x8
	ldr x1, [x9]
