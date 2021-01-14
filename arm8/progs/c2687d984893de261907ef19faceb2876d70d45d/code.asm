	ldr x24, [x6,x6]
	ldr x0, [x15, #17]
	cmp x6, x0
	b.eq #0xC
	ldr x11, [x24, #12]
	b #0x8
	ldr x27, [x1]
