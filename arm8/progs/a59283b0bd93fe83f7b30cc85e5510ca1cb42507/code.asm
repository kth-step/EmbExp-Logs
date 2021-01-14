	ldr x15, [x26,x3]
	ldr x13, [x1, #129]
	cmp x26, x13
	b.eq #0xC
	ldr x5, [x15, #237]
	b #0x8
	ldr x15, [x6, #4]
