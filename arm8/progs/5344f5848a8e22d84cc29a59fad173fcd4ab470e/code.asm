	ldr x18, [x5,x7]
	ldr x1, [x0, #0]
	cmp x5, x1
	b.eq #0xC
	ldr x26, [x18, #43]
	b #0x8
	ldr x17, [x2, #4]
