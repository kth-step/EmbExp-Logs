	ldr x12, [x13,x3]
	ldr x6, [x26, #0]
	cmp x13, x6
	b.eq #0xC
	ldr x27, [x12, #1]
	b #0x8
	ldr x5, [x6, #16]
