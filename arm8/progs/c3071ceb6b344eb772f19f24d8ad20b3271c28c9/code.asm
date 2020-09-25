	ldr x3, [x12,x7]
	ldr x9, [x23, #0]
	cmp x12, x9
	b.eq #0xC
	ldr x16, [x3, #74]
	b #0x8
	ldr x1, [x5, #8]
