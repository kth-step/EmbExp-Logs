	ldr x16, [x26,x4]
	ldr x24, [x1, #0]
	cmp x26, x24
	b.eq #0xC
	ldr x21, [x16, #218]
	b #0x8
	ldr x23, [x3, #4]
