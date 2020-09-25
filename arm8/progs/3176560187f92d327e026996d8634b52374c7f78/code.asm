	ldr x13, [x28,x17]
	ldr x2, [x7, #0]
	cmp x28, x2
	b.eq #0xC
	ldr x0, [x13, #29]
	b #0x8
	ldr x5, [x12, #4]
