	ldr x14, [x12,x0]
	ldr x23, [x12, #0]
	cmp x12, x23
	b.eq #0xC
	ldr x11, [x14, #234]
	b #0x8
	ldr x7, [x9, #4]
