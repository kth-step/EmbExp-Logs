	ldr x20, [x1,x2]
	ldr x29, [x7, #0]
	cmp x1, x29
	b.eq #0xC
	ldr x12, [x20, #7]
	b #0x8
	ldr x15, [x3, #4]
