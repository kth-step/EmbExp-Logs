	ldr x3, [x0,x28]
	ldr x13, [x15, #235]
	cmp x0, x13
	b.eq #0xC
	ldr x13, [x3, #232]
	b #0x8
	ldr x22, [x15, #16]
