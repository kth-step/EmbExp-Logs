	ldr x16, [x5,x5]
	ldr x2, [x1, #0]
	cmp x5, x2
	b.eq #0xC
	ldr x18, [x16, #162]
	b #0x8
	ldr x9, [x21]
