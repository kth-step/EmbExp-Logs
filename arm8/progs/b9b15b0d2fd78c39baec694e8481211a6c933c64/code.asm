	ldr x27, [x13,x0]
	ldr x18, [x10, #77]
	cmp x13, x18
	b.eq #0xC
	ldr x28, [x27, #38]
	b #0x8
	ldr x2, [x2, #4]
