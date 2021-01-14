	ldr x8, [x9,x7]
	ldr x27, [x12, #162]
	cmp x9, x27
	b.eq #0xC
	ldr x1, [x8, #228]
	b #0x8
	ldr x28, [x9, #8]
