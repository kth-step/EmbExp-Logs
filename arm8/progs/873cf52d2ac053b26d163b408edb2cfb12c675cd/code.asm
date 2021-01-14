	ldr x6, [x26,x8]
	ldr x3, [x5, #17]
	cmp x26, x3
	b.eq #0xC
	ldr x8, [x6, #86]
	b #0x8
	ldr x27, [x19]
