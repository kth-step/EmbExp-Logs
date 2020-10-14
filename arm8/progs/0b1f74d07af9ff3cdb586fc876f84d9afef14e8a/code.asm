	ldr x16, [x10,x4]
	ldr x15, [x23, #0]
	cmp x10, x15
	b.eq #0xC
	ldr x15, [x16, #183]
	b #0x8
	ldr x1, [x5, #8]
