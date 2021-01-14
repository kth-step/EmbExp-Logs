	ldr x8, [x2,x17]
	ldr x27, [x1, #86]
	cmp x2, x27
	b.eq #0xC
	ldr x1, [x8, #155]
	b #0x8
	ldr x6, [x15, #4]
