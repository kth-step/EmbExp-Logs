	ldr x23, [x1,x10]
	ldr x12, [x26, #0]
	cmp x1, x12
	b.eq #0xC
	ldr x5, [x23, #146]
	b #0x8
	ldr x11, [x7, #4]
