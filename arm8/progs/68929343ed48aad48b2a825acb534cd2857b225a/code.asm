	ldr x17, [x2,x0]
	ldr x28, [x26, #0]
	cmp x2, x28
	b.eq #0xC
	ldr x13, [x17, #170]
	b #0x8
	ldr x7, [x21]
